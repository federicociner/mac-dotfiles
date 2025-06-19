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

- `./homebrew/basic.sh` to install the basic utilities and programs that I use on all of my macOS environments, both personal and work
- `./homebrew/personal.sh` to install additional applications on personal machines that do not have some sort of remote management setup, which is common on company-issued MacBooks

### Import iTerm2 profiles

Import iTerm2 profiles to enable the hotkey window terminal and further customise iTerm2. Follow the instructions below:

1. Go to `Preferences` under the iTerm2 application and then navigate to `Profiles`
2. Click on the "default" profile and select `Other Actions...` at the bottom of the window
3. You should see an option called `Import JSON Profiles...` which will allow you to select and import the profiles in the `./iterm2/profiles` folder

### Install and configure zsh

If you want to use zsh as your default shell and take advantage of community frameworks like _Oh My Zsh_, follow the instructions below:

1. Set **zsh** as the default shell:

   ```sh
   chsh -s /bin/zsh # if using default Apple zsh
   chsh -s /usr/local/bin/zsh # if installed with Homebrew
   ```

2. Download and install _Oh My Zsh_ in your home directory with curl:

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Download the Powerlevel10k theme:

   ```sh
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

4. Install _Oh My Zsh_ plugins:

   ```sh
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   git clone https://github.com/mroth/evalcache ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/evalcache
   ```

5. Create symlinks to your home directory:

   ```sh
   ln -svf ~/.dotfiles/zsh/.zshrc ~
   ln -svf ~/.dotfiles/zsh/.p10k.zsh ~
   ln -svf ~/.dotfiles/zsh/.zprofile ~
   ```

6. Restart shell or run `source ~/.zprofile` for changes to take effect. You may have to re-run `p10k configure` in order to install the required fonts to get all the right icons.

### Setup symlinks

Run the following in your terminal to update symlinks.

```sh
# GitHub
ln -svf ~/.dotfiles/git/.gitconfig ~

# Vim
ln -svf ~/.dotfiles/vim/.vimrc ~
```

### Install pyenv

At this point, you can install `pyenv` to manage different versions of Python. Anaconda and Miniconda are too bloated, and managing Python with Homebrew is too complicated, so this is the "easy" way out. Follow the instructions below to install `pyenv`.

1. Run `curl https://pyenv.run | zsh` to install `pyenv`

2. Install the version of Python you want to use e.g. Python 3.7.7

   ```sh
   pyenv install 3.7.7
   pyenv global 3.7.7
   ```
