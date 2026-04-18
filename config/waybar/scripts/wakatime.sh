#!/usr/bin/env bash

output=$(wakatime-cli --today 2>/dev/null)
status=$?

if [ $status -ne 0 ] || [ -z "$output" ]; then
	echo '{"text": "💤", "tooltip": "WakaTime offline or No data available for toaday"}'
	exit 0
fi

IFS=',' read -ra segments <<<"$output"

categories=""
tooltip="$output"

for segment in "${segments[@]}"; do
	segment=$(echo "$segment" | xargs)

	if [[ "$segment" =~ ^([0-9]+)\ hrs?\ ([0-9]+)\ mins?\ (.+)$ ]]; then
		hours="${BASH_REMATCH[1]}"
		mins="${BASH_REMATCH[2]}"
		category="${BASH_REMATCH[3]}"

		if [ "$hours" -eq 0 ]; then
			time_part="${mins}m"
		else
			time_part="${hours}h ${mins}m"
		fi
	elif [[ "$segment" =~ ^([0-9]+)\ hrs?\ (.+)$ ]]; then
		hours="${BASH_REMATCH[1]}"
		category="${BASH_REMATCH[2]}"
		time_part="${hours}h"
	elif [[ "$segment" =~ ^([0-9]+)\ mins?\ (.+)$ ]]; then
		mins="${BASH_REMATCH[1]}"
		category="${BASH_REMATCH[2]}"
		time_part="${mins}m"
	else
		continue
	fi

	case "$category" in
	"Coding")
		icon="⌨️"
		;;
	"Writing Tests")
		icon="🧪"
		;;
	"AI Coding")
		icon="🤖"
		;;
	"Writing Docs")
		icon="📝"
		;;
	*)
		icon="❓"
		;;
	esac

	if [ -z "$categories" ]; then
		categories="${icon} ${time_part}"
	else
		categories="${categories}  ${icon} ${time_part}"
	fi
done

if [ -z "$categories" ]; then
	echo "{\"text\": \"Parse error\", \"tooltip\": \"${tooltip}\"}"
else
	echo "{\"text\": \"${categories}\", \"tooltip\": \"${tooltip}\"}"
fi
