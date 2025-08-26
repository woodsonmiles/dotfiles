# dotfiles

A repository for version tracking your dot files.

## Setup

### Installing Stow

This project is made to work with GNU stow. This allows for easy and effective dotfile version tracking and management.

Stow can be installed from most package managers e.g.

`apt install stow` or `dnf install stow`

For further installation guidance see this [guide](https://linuxconfig.org/how-to-use-gnu-stow-to-manage-programs-installed-from-source-and-dotfiles) from LinuxConfig.org. For usage of stow see the [Using](#using) section below.

### Recommended Step

[Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo
so that you have your own copy that you can modify, then install by cloning the
fork to your machine using one of the commands below, depending on your OS.

> [!NOTE]
> Your fork's URL will be something like this:
> `https://gitlab.hawkeye.afds.dev/<your_gitlab_username>/dotfiles.git`

If you have your own forks of the submodules you may want to update your fork of this repository to point to your forked submodules.

### Clone dotfiles

> [!NOTE]
> If following the recommended step above (i.e., forking the repo), replace
> `devops` with `<your_gitlab_username>` in the commands below

```sh
git clone https://gitlab.hawkeye.afds.dev/devops/dotfiles.git "${HOME}"/dotfiles
```

## Using

### Stow

The dotfiles repo is setup to be managed using [GNU stow](https://www.gnu.org/software/stow/). For the most up to date usage of stow, please see the [manual]((https://www.gnu.org/software/stow/manual/)) or utilize the man pages: `man stow`.

For starting, [Using GNU Stow to manage your dotfiles](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) is an easy and succinct rundown.

#### A poor man's usage guide

Config files are grouped by program. Each folder in the dotfiles directory generally houses the config files for that program. They can be "stowed" as such:

`stow nvim` --> to [soft link](https://www.redhat.com/en/blog/linking-linux-explained) the configs given the structure and files in the /dotfiles/nvim/ directory

`stow -D nvim` --> to remove previously "stowed" soft linked configs given the structure and files in the /dotfiles/nvim/ directory
