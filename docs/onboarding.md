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

### [Eza](https://github.com/eza-community/eza) Setup

0. Be sure the [.zshrc setup steps](#zshrc-setup) have been completed.

    > [!warning]
    > This setup depends on the [.zshrc config](#zshrc-setup) being already "stowed". It will not work without this being so.

1. Install Eza following their [installation guide](https://github.com/eza-community/eza/blob/main/INSTALL.md).

2. Stow the eza dotfiles

    ```shell
    cd ~/dotfiles \
    && stow eza
    ```

3. Refresh your terminal and enjoy

    ```shell
    # If you don't want to exit your terminal
    exec zsh
    ```

### Neovim Setup

Thats right! You too can have your very own stellar neovim development environment setup!

> [!note]
> Neovim runs on a unix terminal environment. [Windows](#windows-prerequisites) and [Apple](#apple-prerequisites) users, see the respective sections on configuring a neovim-friendly terminal environment.

Instructions to setup neovim can be found at the [devops/kickstart.nvim repository](https://gitlab.hawkeye.afds.dev/devops/kickstart.nvim).

For further ease of dotfile management it is highly recommended to utilize the [devops/dotfiles repository](https://gitlab.hawkeye.afds.dev/devops/dotfiles), which works with the [devops/kickstart.nvim repository](https://gitlab.hawkeye.afds.dev/devops/kickstart.nvim) neovim config.

### Nerd Font Setup

Setup following these [instructions](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

### Powerlevel10k Theme Setup

0. Be sure the [.zshrc setup steps](#zshrc-setup) have been completed.

    > [!warning]
    > The Powerlevel10k Theme Setup depends on the [.zshrc config](#zshrc-setup) being already "stowed". It will not work without this being so.

1. Stow the powerlevel10k dotfiles

    > [!note]
    > We want to get our *premium* powerlevel10k config setup before we install so that powerlevel10k doesn't try to generate it on install.

    ```shell
    cd ~/dotfiles \
    && stow powerlevel10k
    ```

2. Install the recommended font: [Nerd Font Setup](#nerd-font-setup)

3. Install powerlevel10k following its [github 'manual install' instructions](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual).

### Tmux Configuration

1. Install tmux for your system. Instructions to do so can be found at the [tmux/tmux repository](https://github.com/tmux/tmux/wiki/Installing).

1. Stow the Tmux dotfiles

    ```shell
    cd ~/dotfiles \
    && stow tmux
    ```

1. (Optional, but recommended) Install the Tmux Plugin Manager (tpm) following the [tmux-plugins/tpm instructions](https://github.com/tmux-plugins/tpm#installation)

### Zim (zsh Framework)

0. Be sure the [.zshrc setup steps](#zshrc-setup) have been completed.

    > [!warning]
    > The Zim (zsh Framework) Setup depends on the [.zshrc config](#zshrc-setup) being already "stowed". It will not work without this being so.

1. Stow the Zim dotfiles

    > [!note]
    > We want to get our *premium* Zim (zsh Framework) config setup before we install so that Zim (zsh Framework) doesn't try to generate it on install.

    ```shell
    cd ~/dotfiles \
    && stow zim
    ```

2. Install the Zim (zsh Framework)

    ```shell
    # run the automatic installation script
    curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
    ```

    For the most up to date instructions see [zimfw/zimfw -> automatic installation](https://github.com/zimfw/zimfw?tab=readme-ov-file#automatic-installation)

### zoxide setup

0. Be sure the [.zshrc setup steps](#zshrc-setup) have been completed.

    > [!warning]
    > This Setup depends on the [.zshrc config](#zshrc-setup) being already "stowed". It will not work without this being so.

1. Stow the zoxide dotfiles

    ```shell
    cd ~/dotfiles \
    && stow zoxide
    ```

2. Install zoxide following [the project's github instructions](https://github.com/ajeetdsouza/zoxide#installation)

### .zshrc Setup

1. Move "machine local" changes

    `~/.zshrc.local` is where you can keep local changes to your .zshrc config that you don't want part of the tracked dotfiles.

    If you have .zshrc changes that fit that category move your "machine local" changes into `~/.zshrc.local`. The "stowed" .zshrc config will source it :-D

2. Deploy stow .zshrc config

    > [!note] the old ~/.zshrc may need to be deleted so stow can successfully recreate it

    ```shell
    cd ~/dotfiles \
    && stow zshrc
    ```

3. Exit and reopen your shell
