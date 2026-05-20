---
name: flashcards
description: Use when creating markdown flashcard decks or adding cards to decks in the project
---

# Flashcard Decks

## Overview
Create and manage flashcard decks in the project using markdown files.

## File Storage
- Each deck is a directory (e.g., `formatting/verbs/`, `types/runes/`)
- One card per file inside (e.g., `boolean.md`, `iterating-a-string.md`)
- Use nested directories to group related cards (e.g., `python/error-handling/errors/types.md`)

## Card Format
- One card per file
- use `---` to separate
- Wrap all expressions, operators, and code fragments in backticks
- **Keep cards compact**: concise questions, minimal explanation, let code speak
- **Multi-line answers**: Use a bulleted list (each point prefixed with `-`)
- See example cards in `references/` dir

## Card Faces

```md
# ${FRONT}

---

${BACK}

---

${Extra} (optional)
```

## Naming Conventions
- **No prefixes** in directory names — keep them plain/descriptive (e.g., `formatting/`, not `go-formatting/`)
- File names should be **unique across the entire deck tree** (no two cards with the same filename)
- May add a **topic prefix** to filenames to guarantee uniqueness (e.g., `go-float.md`, `python-float.md`), but never to directory names

See `references/compact-card.md` for a before/after example.

## Card Relations
Use frontmatter to link related cards and define review order:

```yaml
---
forward:
  - "[[next-card]]"
  - "[[another-card-to-review-after]]"
---
```

Do not auto-generate `noteId` in frontmatter. If a card already has a `noteId` and you are slightly modifying its content (e.g., rephrasing, fixing a typo), keep the existing `noteId`. If the card is completely rewritten (new question, new answer, different concept), remove the `noteId`.

The `forward` property lists cards to review next. These links represent:
  - **Topic transition** — move to a related subtopic
  - **Concept transition** — build on the current concept
  - **Section transition** — shift to a different section of the deck

## Question Structure
- Use a `#` heading for the front/question (e.g., `# How do I...?`)
- **How do I...?** (action-oriented)
- Answer: brief explanation + code example if applicable
