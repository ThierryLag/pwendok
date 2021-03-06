# pwendok

> My dotfiles  
> These are my dotfiles. There are many of them, but those are mine. :)

* * *

**pwendok** is a utility repository to store my dotfiles and other text-based utilities for when, two times a year, I clean my machines and do a *clean install*.

The content of my dotfiles are compiled from my personal experience & from [many places](https://github.com/webpro/awesome-dotfiles) on the web, and the structure of this repo is based on [this article from Lars Kappert](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789).

## pwendok/setup

Commands to run after a fresh install.  
**Note:** the following list (and the whole content of this *repo*) is useful for me, but feel free to dig into it, I hope some of my tools can help you too!

1. Configure sys prefs & Finder prefs
2. Install all the fonts from the NAS.
3. Clone this repo to `~/.pwendok`: `cd && git clone https://github.com/leny/pwendok.git ./.pwendok && cd .pwendok`
4. System setup: launch `source install.sh`, then `source setup.sh` to setup & clean the system (the script reboot).
5. App Install: complete the app installations with the AppStore, installing these apps :
    * Billings Pro
    * Caffeine
    * ColorSchemer Studio
    * Dash
    * Fonts
    * LiveReload
    * MPlayerX
    * Moom
    * Pocket
    * Reeder
    * Rested
    * Sketch
    * Soulver
    * The Unarchiver
    * Tweetbot
    * Xcode
    * xScope
6. Launch and configure Alfred, then call `brew cask alfred link` to link the new cask paths with Alfred.
7. Launch Sublime Text, install [Package Control](https://sublime.wbond.net/installation), then install & sync *Sublimall*.

## f.lux settings

I note here my [f.lux](https://justgetflux.com) settings because it takes me weeks to find the good settings for my eyes / liferythm.  
If you don't know [f.lux](https://justgetflux.com), go get a look, and try it. Your eyes will thanks you.

* **wake up time:** 11:00 (*please, don't judge me ;)*)
* **day temp:** sunlite (5500K)
* **late temp:** fluorescent (4200K)
* **night temp:** tungsten (2700K)
