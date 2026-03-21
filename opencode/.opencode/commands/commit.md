---
description: Stage all changes and commit using conventional commit skill
agent: build
---
# Task: Stage and Commit Changes

1. Stage all changes:
!`git add .`

2. Analyze the staged changes and create a commit message using the Conventional Commit specification.
Use the previously defined "conventional-commit" skill to generate a concise, imperative message.

3. Execute the commit using the message made in the previous step:
!`git commit -m "..."`
