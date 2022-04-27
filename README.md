# Mac OS Dotfiles

A collection of portable configuration files for various tools, specifically developed for my macOS build.

## Setup

First, make sure Xcode and Xcode Command Line tools are installed. If you get stuck at any point, follow these guides:

- [How to Set up an Apple Mac for Software Development](https://www.stuartellis.name/articles/mac-setup/#creating-a-private-applications-folder)
- [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/Homebrew/)

I follow the steps below in the exact order they appear, because there are some dependencies between setup phases.

### 1. Install Homebrew

Run the following command to install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Then, run `brew doctor` to make sure there are no issues before proceeding with application installations.

### 2. Install git and Homebrew packages

Install git by running `brew install git` and then clone this repository. Once that step is completed, set your current directory as the root of the repository and run `./homebrew.sh` to install all of the main applications and packages that I used for development and non-development purposes.

### 3. Install Node

Install Node Version Manager (nvm) with Homebrew i.e. `brew install nvm`. Then, install the latest version of Node by running `nvm install node`. Finally, run `./npm.sh` to install any additional global packages.

### 4. Install and configure zsh

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
   ```

5. Create symlinks to your home directory:

   ```sh
   ln -sv ~/.dotfiles/zsh/.zshrc ~
   ln -sv ~/.dotfiles/zsh/.p10k.zsh ~
   ln -sv ~/.dotfiles/zsh/.zprofile ~
   ```

6. Restart shell or run `source ~/.zprofile` for changes to take effect. You may have to re-run `p10k configure` in order to install the required fonts to get all the right icons.

### 5. Setup symlinks

#### GitHub

```sh
ln -sv ~/.dotfiles/git/.gitconfig ~
```

#### vim

```sh
ln -sv ~/.dotfiles/vim/.vimrc ~
```

### 6. Install Python

At this point, pyenv should be installed and can be used to manage different versions of Python. Anaconda and Miniconda are too bloated, and managing Python with Homebrew is too complicated, so this is the "easy" way out. Run the following command in zsh to add some configuration for pyenv in your `.zshrc` file (if it isn't already present):

```sh
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
```

Once that is done, install the version of Python you want to use e.g. Python 3.7.7.

```sh
pyenv install 3.7.7
pyenv global 3.7.7
```
