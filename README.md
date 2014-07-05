# pwendok

> My dotfiles  
> These are my dotfiles. There are many of them, but those are mine. :)

* * *

**pwendok** is a utility repository to store my dotfiles and other text-based utilities for when, two times a year, I clean my machines and do a *clean install*.

## pwendok/setup

Commands to run after a fresh install.

1. Configure sys prefs & Finder prefs
2. Make pwendok script executable `$ chmod +x mac*`
3. Setup profile : append `.profile` commands to the user profile.
4. System setup : launch `./mac.setup.sh` to setup & clean the system (the script reboot).
5. Install all the fonts from the NAS.
6. App & System Install : launch `./mac.install.sh` to install tools and many apps. Complete the app installations by refering to the `app.md` document.
7. Open `leny.itermcolors` & configure iTerm.
8. Launch and configure Alfred, then call `$ brew cask alfred link` to link the new cask paths with Alfred.
9. Make a CLI alias to Sublime text : `sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime`
10. Link Sublime Text, Moom configuration from dropbox.
