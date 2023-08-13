# Dot Files

My configuration for nvim, vim, bash and neofetch. I got the idea of using a bare repo from [Distro Tube](https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg) and he gots the idea from [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).

## Set-up guide

### SSH

Just a quick remember of how to set up ssh for each kind of system.

#### Linux/Windows

```bash
ssh-keygen -t ed25519 -C "example@email.com"
```

### Bare repository

#### Alias to use $HOME as bare repository

```bash
alias dotgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

#### Repository ignore the folder where you will clone it

```bash
echo ".cfg" >> .gitignore
```

#### Clone the repository

```bash
git clone --bare https://github.com/MarioChvx/dotfiles.git $HOME/.cfg
```

#### Define the alias in the shell scop

```bash
alias dotgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

#### Get the dot files

**Be careful** this command will overwrite the current files that are in $HOME directory.

```bash
dotgit checkout -f
```
## After clonig

### packages

```bash
neovim vim clang g++ curl git wget go hugo htop
```
Install `anaconda` and`nvm`. After installing conda install mamaba and run to prevent auto start

```bash
conda config --set auto_activate_base false
```

### nvim

Open nvim and run:

```nvim
:PackerSync
```

### vim

Just remember to install vim-plug to use the plugins.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

And then on vim `PlugInstall`
