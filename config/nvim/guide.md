
> Vim Motions
> source: https://youtu.be/z4eA2eC28qg
> ai-summary: https://www.perplexity.ai/search/https-www-youtube-com-watch-v-H2OfNqcFR6mTNbM0DVLuqw#0 

# Cursor Movements

h: right
j: down
k: up
l: left

# Insert Commands

i: insert before the cursor
a: insert after the cursor
A: insert at the end of line
I: insert at the start of line

# Word Jumps

w: jump to the start of next word
b: jump to the start of prev word

$: jump to end of line (can map to B)
0: jump to start of line (can map to W)

^: jump to the first non-white space char

f<char>: jumps to the first occurrence of that char to the right of the cursor (search forward)
;: repeat previous f cmd

F<char>: jumps to the first occurrence of that char to the left of the cursor (search backwords)
,: repeats last F cmd


<num>f<char>: find <num> occurrence of <char> in front of the cursor
<num>F<char>

<num><cmd>: works with previous cmds too


M: bring cursor to the center 
zz: center the line with respect to the editor window
