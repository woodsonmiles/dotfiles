---
description: Proofread markdown files for spelling, grammar, and punctuation
agent: build
---
# Task: Proofread Markdown Files

1. Determine the target files from `<target>`:
   - If `<target>` is a file, use that file directly
   - If `<target>` is a folder, find all markdown and text files:
     !`find <target> -type f \( -name '*.md' -o -name '*.txt' \) 2>/dev/null | head -50`

2. For each target file:
   - Read the file content
   - Use the LLM to proofread and fix any spelling, grammar, or punctuation errors
   - Preserve the original meaning and intent
   - Only make minimal necessary changes

3. Show the diff of changed files:
   !`git diff -- <target-files>`

(End of file - total 22 lines)