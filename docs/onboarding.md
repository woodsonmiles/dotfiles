# onboarding

A repository collection of useful onboarding resources

## Tech-stack resources

Resources and documentation for the tech-stacks we use can be found in the [tech-stack guide](./tech-stack.md).

Note: The tech-stack guide is not conclusive. If you know resources that were a significant help to you for a tech-stack, feel free make a merge request :-D

## Setting up your environment

### Windows Prerequisites

#### Install and setup WSL

Install and setup WSL following [Microsoft's guide](https://learn.microsoft.com/en-us/windows/wsl/setup/environment).

For more advanced users the WSL distro [can be customized](https://learn.microsoft.com/en-us/windows/wsl/install#change-the-default-linux-distribution-installed).

### Apple Prerequisites

#### Neovim color support

On MacOS the default terminal does not natively support true color. This breaks the color formatting for neovim.

It is recommended to use an alternative terminal, such as [Ghostty](https://ghostty.org/docs/install/binary#homebrew) to avoid this problem.

### Neovim Setup

Thats right! You too can have your very own stellar neovim development environment setup!

> [!note]
> Neovim runs on a unix terminal environment. [Windows](#windows-prerequisites) and [Apple](#apple-prerequisites) users, see the respective sections on configuring a neovim-friendly terminal environment.

Instructions to setup neovim can be found at the [devops/kickstart.nvim repository](https://gitlab.hawkeye.afds.dev/devops/kickstart.nvim).

For further ease of dotfile management it is highly recommended to utilize the [devops/dotfiles repository](https://gitlab.hawkeye.afds.dev/devops/dotfiles), which works with the [devops/kickstart.nvim repository](https://gitlab.hawkeye.afds.dev/devops/kickstart.nvim) neovim config.
