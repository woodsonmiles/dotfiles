# AGENTS.md

## Architecture

- **GNU stow** manages this repo. Each top-level directory (except `docs/`) is a stow package. Running `stow <dir>` from `~/dotfiles` symlinks the package contents into `~`.
- File paths inside each package mirror their target location under `~`. For example, `nvim/.config/nvim/` → `~/.config/nvim/`.
- Most packages are shell config snippets that drop into `~/.zshrc.d/`. The core `zshrc` package's `.zshrc` iterates `~/.zshrc.d/*.zsh` in alphabetical order. Snippets use numeric prefixes (`01-`, `25-`, `95-`, etc.) to control load order.
- Machine-specific overrides go in `~/.zshrc.local` (sourced last by `.zshrc`, not in the repo).

## Git remotes

- `origin` = personal fork on GitHub (`git@github.com:woodsonmiles/dotfiles.git`)
- `afds` = upstream on GitLab (`https://gitlab.hawkeye.afds.dev/hawkeye/devops/dotfiles.git`)
- No submodules, no CI, no tests, no pre-commit hooks.

## OpenCode config

- Repo-local OpenCode settings live at `opencode/.config/opencode/opencode.json` (not in repo root).
- Ollama provider configured with `qwen3:8b` and `gemma4:e4b` models.
- MCP servers enabled: `glab` (GitLab CLI) and `kubectl-mcp`.

## Adding a new tool or config

1. Create a directory named after the tool, mirroring the target path under `~` (e.g. `newtool/.zshrc.d/50-newtool.zsh` or `newtool/.config/newtool/config`).
2. The `.zshrc.d/` numeric prefix determines load order. Pick a number that slots into the right position (see `zshrc/.zshrc.d/` for existing ranges).
3. Run `stow newtool` from `~/dotfiles` to activate.

## Nvim

The nvim config is LazyVim-based. The bootstrap is in `nvim/.config/nvim/lazy.lua`, user config in `lua/config/`, and plugins in `lua/plugins/`.
