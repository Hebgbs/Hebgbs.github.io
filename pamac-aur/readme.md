# Pamac X86_64 for Arch-based systems


### **TL;DR**
> :x: _This is obsolete now — `libpamac-aur` **`11.5.2-1`** and `pamac-aur` **`10.5.1-1`** can be compiled today so these packages are no longer relevant._

* Download pamac tarball
* Fetch any **one** of four tarballs from `libpamac`
* Resolve deps, install and piss off.

### Introduction
Recently, a problem has been encountered with glib causing an inability to compile on x86_64 systems using AUR packages `libpamac-aur` and `pamac-aur`. As I had been able to successfully compile these packages on an older Manjaro system recently, I am sharing the fruits of my labour as a means to allow people the capability of managing Arch packages from a graphical interface, where it's usually braindead-simple as very often for sake of maintenance, people simply need to click on a few buttons and move on with their life.

For AUR browsing, novices love that they can install AUR software without the need to use a terminal, which _while not the best, nor most safe thing in the wide, weird and wild world of Arch Linux to do_ is welcome for persons who who are just starting out, or who want to no-think their way to a better open-source experience than dealing with corporate shenanigans from Canonical and Red Hat, while maintaining the same appearance of user-friendliness their selections provide courtesy of the Manjaro project and this soft-fork release of Pamac suite for Arch Linux proper.

### Installation
Simply download any **one** of four selections from `libpamac` and the `pamac-aur` package, then install them with `sudo pacman -U`. Below are hashes for pamac —  
_Version:_ `10.5.0-1`  
_MD5:_ `584b34104cc8a594cb13f814142613b3`  
_SHA256:_ `29c3272aef413e9b2b1ed474bfdf72601821a46385e2a19b1c5d101cda4950dc`

If you need to install `snapd` and `snapd-glib` as dependencies for either of the `libpamac-aur` builds which has Snap support compiled. you'll need to also fetch that from the AUR, either using an AUR helper or by performing the following (assuming you have `base-devel` and `git`):
> :broom: _Stay neat. `cd` into the directory you'll do your work in, or `mkdir`(`-p`) to create your work directory before executing the following commands._
```
git clone https://aur.archlinux.org/snapd-glib
git clone https://aur.archlinux.org/snapd
cd ./snapd-glib
makepkg -si
cd ../snapd
makepkg -si
```

You will also be prompted for your choice of provider of `xdg-desktop-portal-impl`. Use your head and figure that out on your own, but _generally_ the following shall hold true:
* GNOME Shell / Cinnamon: `~-gnome`
* MATE / XFCE: `~-gtk`
* KDE: `~-kde`
* Hyprland: `~-hyprland`
* LXQt: `~-lxqt`
* WLRoots: `~-wlr`

If you ever need better package support in the future, you can easily give that to yourself by simply replacing `libpamac-aur`. See `libpamac` for more information about the provided packages.

### Use
For the uninitiated, Pamac manifests itself as three separate applications:
* `pamac`: The command-line utility (which may also be provided with `pamac-cli` but I didn't build that AUR package).
* `pamac-tray`: The utility which alerts you about updates and allows you to open…
* `pamac-manager`: The software browsing utility usually provided with Manjaro, but which is also present in some other Arch-based distributions (which, if you're using any of those, this should mean nothing to you unless outdated).

Keeping mirrors up-to-date is entirely up to you. Generally, if you have `reflector` installed you have a simple way to manage your mirrors akin to Manjaro's exclusive `pacman-mirrors` addon. If you use EndeavourOS you have something better: `reflector-simple`. This can be used to replace or supplement other means of managing packages. (Because not everybody wants to use the terminal 24 / 7.)


### Removal
This is far easier; should you not like it, do `sudo pacman -R libpamac-aur pamac-aur`.

