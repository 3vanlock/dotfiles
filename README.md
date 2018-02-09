# .dotfiles

On a mission to fully automate the deployment of my personal workspace.

## About
This README's primary function is to act as a scratchpad for ideas regarding the creation, organization, standardization, and deployment of these configuration files.

Some things may not be inherently clear. The code is not highlighted and customization is not noted where it occurs within cloned libraries. Feel free to open issues or contact me directly with anything.

## Toolbox

### System

* [Ubuntu](https://www.ubuntu.com)
  * Download the [netboot image](http://cdimage.ubuntu.com/netboot/)
* [lightdm](https://wiki.ubuntu.com/LightDM)
* [i3-gaps](https://github.com/Airblader/i3)
* [polybar](https://github.com/jaagr/polybar)

### Mail

Followed [this guide](https://help.ubuntu.com/community/MuttAndGmail) to configure mutt client.

* [fetchmail](http://www.fetchmail.info/)
* [msmtp](http://manpages.ubuntu.com/manpages/trusty/man1/msmtp.1.html)
* [mutt](http://www.mutt.org/)
* [procmail](http://www.procmail.org/)

### Chat

* [irssi](https://github.com/irssi/irssi)
* [discord](https://discordapp.com/)
* [mumble](https://wiki.mumble.info/wiki/Main_Page)

### Media Player

* [mpv](https://github.com/mpv-player/mpv)
* [playerctl](https://github.com/acrisci/playerctl)

### Editor

* [atom](https://atom.io/)
* [vim](https://www.vim.org)
  * Colors via [pywal](https://github.com/dylanaraps/pywal/wiki/Customization#vim)
  * Configuration based on [ultimate Vim config](https://github.com/amix/vimrc)

### Browser

* [firefox](https://www.mozilla.org)
  * User.js based on [ghacks user.js](https://github.com/ghacksuserjs/ghacks-user.js)
  * Custom [userChrome.css](http://kb.mozillazine.org/index.php?title=UserChrome.css) using [pywal's](https://github.com/dylanaraps/pywal) generated colors

### Terminal

* [terminator](https://en.wikipedia.org/wiki/Terminator_(terminal_emulator))
* [zsh](https://www.zsh.org/)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Utilities
* [pyenv](https://github.com/pyenv/pyenv)
* [pipenv](https://github.com/pypa/pipenv)
* [streamlink](https://github.com/streamlink/streamlink)
* [vtop](https://github.com/MrRio/vtop)

## To Do

* Remove absolute references
  * Clean and centralize PATH creation
  * Reference directories by their relative path
* Add secrets file to allow including personal configurations
  * fetchmail
  * irssi
  * msmtp
* Create shell script to deploy 'requirements' folder
  * pip
  * npm
