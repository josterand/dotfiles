<div align="center">
    <h1>Josterand's Rice</1h><br><br>
</div>

<div align="center">
    <a href="#overview"><kbd> <br> Overview <br> </kbd></a>&ensp;&ensp;
    <a href="#showcase"><kbd> <br> Showcase <br> </kbd></a>&ensp;&ensp;
    <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
    <a href="#components"><kbd> <br> Components <br> </kbd></a>&ensp;&ensp;
    <a href="#keybindings"><kbd> <br> Keybindings <br> </kbd></a>&ensp;&ensp;
</div>

## Overview

This is a rice setup I built for my personal use. I like window managers because they are lightweight and highly customizable. This rice setup follows the philosophy of "the simpler, the better," meaning it's minimalist but still functional by only including the most essential features.

## Screenshots

<div align="center">
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/Embeds/showcase.png" alt="rice showcase screenshot">
</div>

## Installation (This Section is in WIP)

<details>
<summary><b>Prerequisites</b></summary>

Please install all the necessary programs and dependencies to ensure this rice setup works smoothly.
The commands provided here are for **APT** and **Pacman**. For Fedora and Red-Hat based distributions, please adjust accordingly (I haven't used those distros since i started using Linux).

**Command for APT:**

```bash
sudo apt install stow
```

**Command for Pacman:**

```bash
sudo pacman -S stow
```

</details>

<details>
<summary><b>Cloning & Applying dotfiles</b></summary>

After you have installed all the necessary programs and dependencies, you can now apply the dotfiles. Clone this repository into the `~/` or `$HOME` directory. Remember, it must be there. Once the dotfiles repository is cloned and stowed, do not delete the parent folder without proper execution as it will create broken symlinks.

**Clones the repo and creates symlinks with stow:**
```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
stow -d $HOME/dotfiles
```
If you want to uninstall these dotfiles, you just need to "destow" them, then you are free to do anything with the parent folder.
**To remove configurations:**

```bash
stow -D -d $HOME/dotfiles
```
</details>

<br>

**💡 Note:** You can also install configs manually by copying the needed files. Always back up your existing rice and config files before applying new ones!

## Components details

Here’s a list of components used in my i3WM setup. You can replace optional components based on your preference.

| **Category**       | **Package**   | **Required?** |
| ------------------ | ------------- | ------------- |
| **Window Manager** | i3-WM         | ✅ Yes        |
| **Terminal**       | Alacritty     | ❌ No         |
| **Launcher**       | Rofi          | ✅ Yes        |
| **Notifications**  | Dunst         | ✅ Yes        |
| **Wallpaper**      | Feh           | ❌ No         |
| **Keyring**        | Gnome Keyring | ❌ No         |
| **Appearance**     | LX Appearance | ❌ No         |
| **Polkit Daemon**  | LX Polkit     | ❌ No         |

### **Fonts**

The following fonts are used in the setup:

-   **[JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)** (Monospace + Icons)
-   **[Inter Font](https://fonts.google.com/specimen/Inter)** (UI elements)

## KEYBINDINGS

| **Keybinds**                       | **Function**                              |
| ---------------------------------- | ----------------------------------------- |
| **Mod+1** to **Mod+0**             | Switch to workspace **1-10**              |
| **Mod+Shift+1** to **Mod+Shift+0** | Move window to workspace **1-10**         |
| **Mod+Tab**                        | Switch to next workspace                  |
| **Mod+Shift+Tab**                  | Switch to previous workspace              |
| **Mod+Return**                     | Open terminal                             |
| **Mod+Shift+W**                    | Close active window                       |
| **Mod+D**                          | Open app menu                             |
| **Mod+F11**                        | Take a screenshot                         |
| **Mod+J**                          | Move focus **left**                       |
| **Mod+K**                          | Move focus **down**                       |
| **Mod+L**                          | Move focus **up**                         |
| **Mod+;**                          | Move focus **right**                      |
| **Mod+Shift+J**                    | Move window **left**                      |
| **Mod+Shift+K**                    | Move window **down**                      |
| **Mod+Shift+L**                    | Move window **up**                        |
| **Mod+Shift+;**                    | Move window **right**                     |
| **Mod+H**                          | Split layout **horizontally**             |
| **Mod+V**                          | Split layout **vertically**               |
| **Mod+F**                          | Toggle **fullscreen**                     |
| **Mod+E**                          | Toggle **split layout mode**              |
| **Mod+Shift+Space**                | Toggle **floating mode**                  |
| **Mod+Space**                      | Switch between **tiling & floating mode** |
| **Mod+Shift+C**                    | **Reload** i3 config                      |
| **Mod+Shift+R**                    | **Restart** i3                            |
| **Mod+Escape**                     | Open power menu                           |
| **Mod+R**                          | Enter **Resize Mode**                     |
| **Left Arrow**                     | Shrink **width** (Resize Mode)            |
| **Right Arrow**                    | Expand **width** (Resize Mode)            |
| **Up Arrow**                       | Shrink **height** (Resize Mode)           |
| **Down Arrow**                     | Expand **height** (Resize Mode)           |
| **Enter / Escape / Mod+R**         | Exit **Resize Mode**                      |

Keybindings may change over time to fit my workflow, but for now, they’re mostly based on i3’s default settings.

---

## LICENSE

This project is licensed under the **MIT License**.
Feel free to use, modify, and distribute it as needed.

<div align="center">
    <sub>This project was created by josterand and is licensed under the MIT License with no warranty.</sub>
</div>
