# Dotfiles

## Installation
This is my personal setup and has only been tested on my machine. You should not install these without reading them first, but hey, what's the worst that could happen?

### Using Git
Clone the repository wherever you like. Run `link.sh` to symlink the files into your home directory.

```
git clone https://github.com/nonphoto/dotfiles.git ~/dotfiles
cd ~/dotfiles
./link.sh
```

### VSCode
I include my VSCode settings as well. Extensions are installed from `vscode-extensions` using `install.sh`. You can populate the list with the VSCode shell command.

```
code --list-extensions > vscode-extensions
```

## Terminal
Profiles for both Terminal and iTerm are included. They expect you to have the SF Mono font installed.

## Vim
I prefer to match Vim's color scheme with the rest of the shell, so I wrote my own. `terminal.vim` is designed for 16 color terminals where the "bright" colors are used as background alternates.
