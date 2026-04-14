---
description: Proofread markdown files for spelling, grammar, and punctuation
agent: build
---
# Task: Proofread Markdown Files

1. Get the list of unstaged markdown files:
!`git diff --name-only -- '*.md'`

2. Get the diff for each unstaged markdown file:
!`git diff -- '*.md'`

3. For each file with unstaged changes, analyze and correct spelling, grammar, and punctuation errors:
   - Read the current file content
   - Use the LLM to proofread and fix any spelling, grammar, or punctuation errors
   - Preserve the original meaning and intent
   - Only make minimal necessary changes

4. Stage the corrected files:
!`git add <corrected-files>`

5. Show the final diff of staged changes:
!`git diff --cached -- '*.md'`
