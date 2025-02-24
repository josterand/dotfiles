> [!WARNING]
> THE DOCUMENTATION IS CURRENTLY UNDERGOING A COMPLETE OVERHAUL TO PROVIDE A BETTER INFORMATION PAGE.

<div align="center">
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/Embeds/main-banner.png">
</div>

<br>
<br>

<div align="center">
    <a href="#overview"><kbd> <br> Overview <br> </kbd></a>&ensp;&ensp;
    <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
    <a href="#components"><kbd> <br> Components <br> </kbd></a>&ensp;&ensp;
    <a href="#keybindings"><kbd> <br> Keybindings <br> </kbd></a>&ensp;&ensp;
</div>

<!-- <div align="center">
    <img src="https://img.shields.io/badge/Linux-grey?style=for-the-badge&label=Platform&labelColor=232323&color=1e1e1e">
    <img src="https://img.shields.io/github/license/josterand/dotfiles?style=for-the-badge&label=License&labelColor=232323&color=1e1e1e">
    <img src="https://img.shields.io/github/repo-size/josterand/dotfiles?style=for-the-badge&label=Repo%20Size&labelColor=232323&color=1e1e1e">
    <img src="https://img.shields.io/github/last-commit/josterand/dotfiles?style=for-the-badge&label=Last%20Commit&labelColor=232323&color=1e1e1e">
</div> -->

## Overview

<div align="right">
    <a href="#overview"><kbd><<</kbd></a>
</div>

<div align="center">
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/showcase.png" width=360>
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/showcase.png" width=360>
</div>

## Installation

It is recommended to use `GNU Stow` to simplify and ensure a safe installation process when modifying system files. The `stow` package is available on all Linux distributions through their respective package managers.

To install the dotfiles, run the following commands:

```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
stow -d $HOME/dotfiles
```

To uninstall the dotfiles, run the following command:

```bash
stow -D -d $HOME/dotfiles
```

<div align="right">
    <a href="#overview"><kbd><<</kbd></a>
</div>

## Components

Here is a list of recommended packages to use with these dotfiles to ensure everything works smoothly.

| Use Case            | Package       | Requirement |
| ------------------- | ------------- | ----------- |
| Window Manager      | Bspwm         | Required    |
| Keybind Daemon      | Sxhkd         | Required    |
| Terminal            | Alacritty     | Optional    |
| Status Bar          | Polybar       | Required    |
| Launcher            | Rofi          | Required    |
| Notification Daemon | Dunst         | Required    |
| Wallpaper Setter    | Feh           | Optional    |
| Keyring             | Gnome Keyring | Optional    |
| Appearance Setter   | LX Appearance | Optional    |
| Polkit Daemon       | LX Polkit     | Optional    |

> [!TIP]
> Optional means you can replace it with an application or package of your choice. However, make sure to update the BSPWM configuration accordingly to ensure everything works properly.

<div align="right">
    <a href="#overview"><kbd><<</kbd></a>
</div>

## Keybindings

###### _<div align="center"><sub>This project created by josterand and licensed under the MIT License with no warranty.</sub></div>_
