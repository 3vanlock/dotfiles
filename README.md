# .dotfiles

On a mission to fully automate the deployment of my personal workspace.

## About

This README's primary function is to act as a scratchpad for ideas regarding the creation, organization, standardization, and deployment of these configuration files.

Some things may not be inherently clear. The code is not highlighted and customization is not noted where it occurs within cloned libraries. Feel free to open issues or contact me directly with anything.

## Toolbox

### System

* [ubuntu 18.04](https://www.ubuntu.com)
  * Download the [netboot image](http://cdimage.ubuntu.com/netboot/)
* [x server](https://www.x.org/wiki/XServer/)
* [i3-gaps](https://github.com/Airblader/i3)
* [polybar](https://github.com/jaagr/polybar)

### Chat

* [irssi](https://github.com/irssi/irssi)
* [discord](https://discordapp.com/)
* [mumble](https://wiki.mumble.info/wiki/Main_Page)

### Media Player

* [mpv](https://github.com/mpv-player/mpv)
* [playerctl](https://github.com/acrisci/playerctl)

### Editor

* [vs code](https://code.visualstudio.com/docs/setup/linux)
* [vim](https://www.vim.org)
  * Colors via [pywal](https://github.com/dylanaraps/pywal/wiki/Customization#vim)
  * Plugins handled via [vim-plug](https://github.com/junegunn/vim-plug)

### Browser

* [firefox](https://www.mozilla.org)
  * User.js based on [ghacks user.js](https://github.com/ghacksuserjs/ghacks-user.js)
  * Custom [userChrome.css](http://kb.mozillazine.org/index.php?title=UserChrome.css) using [pywal's](https://github.com/dylanaraps/pywal) generated colors

### Terminal

* [terminator](https://en.wikipedia.org/wiki/Terminator_(terminal_emulator))
* [zsh](https://www.zsh.org/)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Python

* [pyenv](https://github.com/pyenv/pyenv)
* [pipenv](https://github.com/pypa/pipenv)
* [streamlink](https://github.com/streamlink/streamlink)

### Node 

* [vtop](https://github.com/MrRio/vtop)

### Ruby
* [rvm](https://rvm.io/)

## Install

Install by  cloning the directory to your preferred dotfiles location. [Git](https://git-scm.org) and [GNU Stow](https://www.gnu.org/software/stow/) are required

Simple guide to organizing and using your dotfiles [from Brandon Invergo](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

```bash
git clone https://github.com/elock37/dotfiles ~/.dotfiles
cd ~/.dotfiles
stow */
```

You can selectively `stow` any directory you plan to use or use all configurations included via `stow */`

## To Do

* Remove absolute references
  * Clean and centralize PATH creation
  * Reference directories by their relative path
* Create shell script to deploy 'requirements' folder
  * pip
  * npm
