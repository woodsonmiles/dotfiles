# dotfiles

A repository of configurations for a linux development environment.

## Content and References

- [Onboarding](/docs/onboarding.md)
- [Setup](#setup)
- [Contributing](#contributing)
- [Forking Workflow](#forking-workflow)

## Setup

### Prerequisites

- Computer must be setup to run a linux OS.\
  For guidance on setting up your Windows computer with a WSL linux environment see [onboarding](/docs/onboarding.md#windows-prerequisites).

### Install

1. Install [GNU stow](https://www.gnu.org/software/stow/) to manage disparate configurations in a central location
   - For Debian flavors use `apt install stow`
   - For Red Hat flavors use `dnf install stow`
   - Further installation guidance is available [here](https://linuxconfig.org/how-to-use-gnu-stow-to-manage-programs-installed-from-source-and-dotfiles)
1. Clone the repo into your home directory\
   **Note**: See the below [forking workflow](#forking-workflow) if you want
   to avoid storing others' personal branches.

   ```sh
   git clone https://gitlab.hawkeye.afds.dev/devops/dotfiles.git "${HOME}"/dotfiles
   ```

1. Create a branch to store your personal changes

   ```sh
   cd ~/dotfiles
   git switch -c my-name
   ```

1. Stow the configurations of each desired application\
   This will create symlinks where the applications expect their config files
   to be.

   ```sh
   cd ~/dotfiles/
   stow nvim
   stow ...
   ```

   For additional guidance see this [quick guide](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) to managing dotfiles with stow and the [stow manual](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) also available by running `man stow`.

1. Personalize the configurations to your liking.\
   If you have your own forks of any included submodules, you may want to update
   your fork to point to your submodules.
1. Save your changes remotely.

   ```sh
   git commit -am "my commit message"
   git push
   ```

## Contributing

If you have changes in your fork you would like to contribute to main for others
to use, follow these steps.

1. Create a branch with the commits you wish to merge into main.
1. Create a merge request to merge that branch into main.
1. Post the request in the merge requests channel and tag one of the repo maintainers.

## Forking Workflow

Some may wish to fork the repo rather than clone it to avoid storing the personal
branches of other users. See the following instructions from gitlab:

- [Creating the fork](https://docs.gitlab.com/user/project/repository/forking_workflow/#create-a-fork)
- [Updating the fork](https://docs.gitlab.com/user/project/repository/forking_workflow/#update-your-fork)
- [Contributing to the original](https://docs.gitlab.com/user/project/repository/forking_workflow/#merge-changes-back-upstream)
