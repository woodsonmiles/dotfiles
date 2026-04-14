---
description: Line-edit markdown files for style, voice, and flow
agent: build
---
# Task: Line Edit Markdown Files

1. Get the list of unstaged markdown files:
!`git diff --name-only -- '*.md'`

2. Get the diff for each unstaged markdown file:
!`git diff -- '*.md'`

3. For each file with unstaged changes, analyze and improve clarity, impact, and consistency:
   - Read the current file content
   - Use the LLM to perform line-by-line editing focusing on:
     - **Clarity:** Simplify complex sentences, remove ambiguities
     - **Impact:** Strengthen word choice, improve emphasis
     - **Consistency:** Ensure consistent terminology, tone, and formatting
   - Preserve the original meaning and intent
   - Make targeted improvements that enhance the writing

4. Stage the corrected files:
!`git add <corrected-files>`

5. Show the final diff of staged changes:
!`git diff --cached -- '*.md'`
