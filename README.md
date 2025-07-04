# macOS dotfiles

A collection of portable configuration files for various tools, specifically developed for my macOS build.

## Pre-requisites

First, make sure Xcode and Xcode Command Line tools are installed. If you get stuck at any point, follow these guides:

- [How to Set up an Apple Mac for Software Development](https://www.stuartellis.name/articles/mac-setup/#creating-a-private-applications-folder)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/Homebrew/)

I follow the steps below in the exact order they appear, because there are some dependencies between setup phases.

## Installation

### Install Homebrew

Run the following command to install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Then, run `brew doctor` to make sure there are no issues before proceeding with application installations.

### Install git and packages

Install git by running `brew install git` and then clone this repository. Once that step is completed, set your current directory as the root of the repository and run the following scripts:

- `./homebrew/core.sh` to install the basic utilities and programs that I use on all of my macOS environments, both personal and work.
- `./homebrew/apps.sh` to install additional applications.

### Install and configure zsh

If you want to use zsh as your default shell and take advantage of community frameworks like _Oh My Zsh_, follow the instructions below:

1. Set **zsh** as the default shell:

   ```sh
   chsh -s /bin/zsh # if using default Apple zsh
   chsh -s /opt/homebrew/bin/zsh # if installed with Homebrew
   ```

2. Download and install _Oh My Zsh_ in your home directory with curl:

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Install _oh my zsh_ plugins:

   ```sh
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
   git clone https://github.com/mroth/evalcache ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/evalcache
   ```

4. Create symlinks to your home directory:

   ```sh
   ln -svf ~/.dotfiles/zsh/.zshrc ~
   ln -svf ~/.dotfiles/zsh/.zprofile ~
   ln -svf ~/.dotfiles/git/.gitconfig ~
   ln -svf ~/.dotfiles/vim/.vimrc ~
   ```

## Post-installation

### Make iterm beautiful

Follow this [guide](https://medium.com/airfrance-klm/beautify-your-iterm2-and-prompt-40f148761a49).

### Import iTerm2 profiles

Import iTerm2 profiles to enable the hotkey window terminal and further customise iTerm2. Follow the instructions below:

1. Go to `Preferences` under the iTerm2 application and then navigate to `Profiles`
2. Click on the "default" profile and select `Other Actions...` at the bottom of the window
3. You should see an option called `Import JSON Profiles...` which will allow you to select and import the profiles in the `./iterm2/profiles` folder
