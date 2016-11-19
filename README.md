# Dotfiles

## Installation
This is my personal setup and has only been tested on my machine. You should not install these without reading them first, but hey, what's the worst that could happen?

### Using Git
Clone the repository into `~/dotfiles`. Run `~/dotfiles/install.sh` to symlink the files into your home directory. If there are any conflicts, the existing files will be moved to `~/dotfiles_backup`.

```
git clone https://github.com/nonphoto/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Terminal
My terminal profile is based on the [Gooey](https://github.com/simeydotme/atom-gooey-syntax) Atom theme. It expects the SF Mono font.

## Vim
I prefer to match Vim's color scheme with the rest of the shell, so I wrote my own. `terminal.vim` is designed for 16 color terminals where the "bright" colors are used as background alternates.
