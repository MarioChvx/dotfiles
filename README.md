# Dot Files

My configuration for vim and bash. I got the idea from [Distro Tube](https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg) and he gots the idea from [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).

## Set-up guide

### SSH

Just a remember of how to set up ssh for each kind of system.

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
git clone --bare <git-repo-url> $HOME/.cfg
```

#### Define the alias in the shell scop

```bash
alias dotgit='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

#### Get the dot files

**Be careful** this command will overwrite the current files that are in $HOME directory.

```bash
config checkout
```
