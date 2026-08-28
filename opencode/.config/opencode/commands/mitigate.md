---
description: Scan for vulnerabilities with grype, patch them, and verify tests pass
agent: build
---
# Task: Mitigate Vulnerabilities

Run the vulnerability mitigation workflow:

1. Run grype to find fixable vulnerabilities:
!`grype dir:. --only-fixed --fail-on high`

2. If grype found vulnerabilities, attempt to patch them by updating the affected packages to their latest compatible versions.

3. After patching, run the test suite to verify nothing is broken:
!`go test ./...`

4. If tests fail:
   - If the fix is straightforward (e.g., import path change, minor API adjustment), correct it.
   - If the fix is complex or would require significant refactoring, add the vulnerability to `.grype.yaml` under an `ignore` section with a comment explaining what the vulnerability is and why the package cannot be easily updated.

5. After all fixes and any necessary exceptions are added, re-run both checks to confirm everything passes:
!`grype dir:. --only-fixed --fail-on high`
!`go test ./...`
