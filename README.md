# Mac OS Dotfiles

A collection of portable configuration files for various tools, specifically developed for my Mac OS build.

## Setup

First, make sure Xcode and Xcode Command Line tools are installed. In general, follow these guides:

- [How to Set up an Apple Mac for Software Development](https://www.stuartellis.name/articles/mac-setup/#creating-a-private-applications-folder)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/Homebrew/)

### 1. Install Homebrew

Run the following command to install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Then, run `brew doctor` to make sure there are no issues before proceeding with application installations. If there are no issues, run `./homebrew.sh` to install applications.

### 2. Install Node

Install Node version manager first:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Once `nvm` is installed, install the latest version of Node by running `nvm install node`. Then run `./npm` to install necessary global packages.

### 3. Install and configure zsh

If you want to use **zsh** as your default shell and take advantage of community frameworks like _Oh My Zsh_, follow the instructions below:

1. Install **zsh** with Homebrew:

   ```sh
   brew install zsh
   ```

2. Set **zsh** as the default shell:

   ```sh
   chsh -s /bin/zsh # if using default Apple zsh
   chsh -s /usr/local/bin/zsh # if installed with Homebrew
   ```

3. Download and install _Oh My Zsh_ in your home directory with curl:

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. Download the Powerlevel10k theme:

   ```sh
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

5. Install _Oh My Zsh_ plugins:

   ```sh
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   ```

6. Create symlinks to your home directory:

   ```sh
   ln -sv ~/.dotfiles/zsh/.zshrc ~
   ln -sv ~/.dotfiles/zsh/.p10k.zsh ~
   ln -sv ~/.dotfiles/zsh/.zprofile ~
   ```

7. Restart shell or run `source ~/.zprofile` for changes to take effect. You may have to re-run `p10k configure` in order to install the required fonts to get all the right icons.

### 4. Setup symlinks

#### GitHub

```sh
ln -sv ~/.dotfiles/git/.gitconfig ~
```

#### vim

```sh
ln -sv ~/.dotfiles/vim/.vimrc ~
```
