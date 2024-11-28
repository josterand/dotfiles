<div align="center">
    <h1>Josterand's bspwm Dotfiles</h1>
    <table>
        <th><a href="README.md#Overview">Overview</a></th>
        <th><a href="README.md#Philosophy">Philosophy</a></th>
        <th><a href="README.md#System">System</a></th>
        <th><a href="README.md#Installation">Installation</a></th>
        <th><a href="README.md#Credits">Credits</a></th>
    </table>
</div>

## Overview

## Philosophy
This is a Rice I built from scratch, specifically designed to work with the **BSPWM** Window Manager. It embodies a philosophy of minimalist yet functional design, allowing users to focus on the essential tasks at hand.

This Rice features a minimalist *single-bar* setup that includes key infotainment elements users might need. It’s my flagship Rice that I’ll continue to use. As long as I stick with **BSPWM**, refinements, updates, new functionalities, and improvements will keep coming!

## System
- **Operating System**: EndeavourOS (Arch-based distro, BTW)
- **Window Manager**: BSPWM (*with SXHKD keybind daemon*)
- **Terminal**: Alacritty
- **Bar**: Polybar
- **Launcher**: Rofi

## Installation
This Rice is designed to be easily installed without modifying your system. We’ll use `GNU Stow` for installation.
Please follow the commands below by copying them and pasting them into the terminal. Make sure you do it in order following what is written here.

<details>
<summary><b>How it works</b></summary>

`GNU Stow` is a symlink farm manager which takes distinct sets of software and/or data located in separate directories on the filesystem, and makes them all appear to be installed in a single directory tree.

Let's think of `$HOME` as `/home/josterand/`, and `$DOTFILES` as `/home/josterand/dotfiles`.

---

**Example**

Below is my `$HOME` directory structure. There are my media folders, then my system's configuration folders marked with '.' in the name which is already there.
```bash
$HOME (/home/josterand/)
├── .bin/
├── .config/
├── .fonts/
├── Documents
├── Downloads
├── Music
├── Pictures
└── Videos
```

Now, let's take a look at the directory layout of our dotfiles. let's assume we have cloned it locally on our machine.

```bash
$DOTFILES (home/josterand/dotfiles/)
├── .bin
│   ├── appmenu
│   ├── powermenu
│   └── wifimenu
├── .config
│   ├── alacritty
│   ├── bspwm
│   ├── dunst
│   ├── polybar
│   ├── rofi
│   └── sxhkd
└── .fonts
    ├── Inter
    ├── JetBrains Mono
    └── Material Design Iconic

```
The structure is almost similar, right? With configuration folders marked by a '.' at the beginning of their names. We want to move the configuration files from here to our system's configuration directory. This technically makes our `$DOTFILES` folder behave like the `$HOME` folder. `GNU Stow` will symlink files in folders such as .config, .fonts, etc., from our `$DOTFILES` and put them into `$HOME` as if they were actually there. By assuming our `$DOTFILES` folder is the `$HOME` folder even though it is not.

**See the difference**


```bash
$HOME (/home/josterand/)
├── .bin/ -> dotfiles/.bin/
├── .config/
│   ├── alacritty/ -> ../dotfiles/.config/alacritty
│   ├── bspwm/ -> ../dotfiles/.config/bspwm
│   ├── dunst/ -> ../dotfiles/.config/dunst
│   ├── polybar/ -> ../dotfiles/.config/polybar
│   ├── rofi/ -> ../dotfiles/.config/rofi
│   └── sxhkd/ -> ../dotfiles/.config/sxhkd
├── .fonts/ -> dotfiles/.fonts/
│   ├── Inter -> ../dotfiles/.fonts/Inter
│   ├── JetBrains Mono -> ../dotfiles/.fonts/'JetBrains Mono'
│   ├── Material Design Iconic Font -> ../dotfiles/.fonts/'Material Design Iconic Font'
├── Developments
├── Documents
├── dotfiles
│   ├── .bin/
│   ├── .config/
│   ├── .fonts/
├── Downloads
├── Music
├── Pictures
└── Videos
```
You can see that the .bin, .config, .fonts, etc. folders in our `$HOME` have a description that they actually came from `$DOTFILES`, right? This is what `GNU Stow` does. It creates a symlink that makes it look like the file lives in a folder even though it doesn't. But with a note, the folder that the files come from must be 1 level below the parent folder. Here we have to put the `$DOTFILES` folder 1 level below `$HOME` (let's say in the root directory).

Earlier, I mentioned that installing these dotfiles "**without modifying**" the system. That is correct. `GNU Stow` only creates symlinks according to the folder. You might ask “*What will happen to my original .config folder when it is overwritten by the symlink created by GNU Stow?*” The answer is “*They stay there. `GNU Stow` only adds new symlinks to what is in `$DOTFILES` to your .config folder because it already exists*".

---

Maybe my explanation is too complicated and hard to understand. But I explained it with my own understanding. I understand but I can't explain it :D

Just try it, you'll understand.

</details>

<details>
<summary><b>1. Clone the repo</b></summary>

Ensure you clone this repository in your root `$HOME` directory.
```bash
cd $HOME
```

Clone this repository into `$HOME`
```bash
git clone https://github.com/josterand/dotfiles.git
```

Stow the configurations!
```
cd dotfiles
stow .
```
</details>

<details>
<summary><b>2. Install dependencies</b></summary>

```cd ~/dotfiles
grep -vE '^\s*#|^\s*$' pkglist.txt > pkglist_clean.txt
sudo pacman -S --needed - < pkglist_clean.txt
rm -r pkglist_clean.txt
```

You can now log out of your current DE or WM and log back into BSPWM.
</details>

## Credits
I'll add the credits later.
