```
$$$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$$$\ $$$$$$\ $$\       $$$$$$$$\  $$$$$$\
$$  __$$\ $$  __$$\\__$$  __|$$  _____|\_$$  _|$$ |      $$  _____|$$  __$$\
$$ |  $$ |$$ /  $$ |  $$ |   $$ |        $$ |  $$ |      $$ |      $$ /  \__|
$$ |  $$ |$$ |  $$ |  $$ |   $$$$$\      $$ |  $$ |      $$$$$\    \$$$$$$\
$$ |  $$ |$$ |  $$ |  $$ |   $$  __|     $$ |  $$ |      $$  __|    \____$$\
$$ |  $$ |$$ |  $$ |  $$ |   $$ |        $$ |  $$ |      $$ |      $$\   $$ |
$$$$$$$  | $$$$$$  |  $$ |   $$ |      $$$$$$\ $$$$$$$$\ $$$$$$$$\ \$$$$$$  |
\_______/  \______/   \__|   \__|      \______|\________|\________| \______/
```

<!-- Menus -->
<div align="center">
    <a href="#overview"><kbd> <br> OVERVIEW <br> </kbd></a>&ensp;&ensp;
    <a href="#installation"><kbd> <br> INSTALLATION <br> </kbd></a>&ensp;&ensp;
    <a href="#keybindings"><kbd> <br> KEYBINDINGS <br> </kbd></a>&ensp;&ensp;
    <a href="#license"><kbd> <br> LICENSE <br> </kbd></a>&ensp;&ensp;
</div>

## OVERVIEW

<img src="" alt="rice-showcase-here" align="right" width="480px">

I built this rice for my personal use. It follows the philosophy of _"the simpler, the better"_ meaning it's minimalist but still functional by only including the most essential features.

-   :computer: **Window Manager**: [bspwm](https://github.com/baskerville/bspwm)
-   :pushpin: **Panel**: [Polybar](https://github.com/polybar/polybar)
-   :rocket: **App Launcher**: [Rofi](https://github.com/davatorium/rofi)
-   :left_speech_bubble: **Notification System**: [Dunst](https://github.com/dunst-project/dunst)
-   :gear: **Terminal Emulator**: [Alacritty](https://alacritty.org/)
-   :shell: **Shell**: [Zsh](https://www.zsh.org/)
-   :file_folder: **File Manager**: [Yazi](https://yazi-rs.github.io/)

## INSTALLATION

#### 1. DEPENDENCIES

<details>
<summary><b>Debian-based Linux</b></summary>

**WIP! WILL BE ADDED SOON**

</details>

#### 2. COMPONENTS

:bulb: **_To keep the repository lightweight, the component files used in this rice setup are not included here. You can download them from their official websites linked below._**

<details>
<summary><b>Font</b></summary>

Here are the fonts used in this rice setup. So far, this rice only uses open and freely licensed fonts.

| **Font Name**           | **Usage**               | **License**         | **Link**                                                  |
| ----------------------- | ----------------------- | ------------------- | --------------------------------------------------------- |
| **Inter**               | UI Elements             | SIL OFL 1.1 License | [:link: Website](https://fonts.google.com/specimen/Inter) |
| **JetBrains Mono**      | Alacritty Terminal Font | SIL OFL 1.1 License | [:link: Website](https://www.jetbrains.com/lp/mono/)      |
| **Font Awesome 6 Free** | Glyph Symbols           | SIL OFL 1.1 License | [:link: Website](https://fontawesome.com)                 |

</details>

<details>
<summary><b>Wallpaper</b></summary>

| **Image**                                                                                                                                                   | **Link**                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------- |
| <img alt="Current Wallpaper" src="https://raw.githubusercontent.com/josterand/assets/refs/heads/wallpapers/wallpapers/current-wallpaper.jpg" width="360px"> | [:link: Repository](https://github.com/josterand/assets) |

</details>

#### 3. INSTALL RICE

<details>
<summary><b>Stow</b></summary>

I highly recommends using [GNU Stow](https://www.gnu.org/software/stow/) for installation to ensure quick, conflict-free, and easily reversible setups.
Stow manages files with symlinks, keeping the structure tidy, flexible, and easy to sync without duplication.
Make sure to back up your configuration files to avoid data loss in case of unexpected issues.

Clone this repository to your local machine:

```sh
cd ~/
git clone https://github.com/josterand/dotfiles.git
```

Then, use `stow` to apply the configuration from the cloned folder:

```sh
stow -d $HOME/dotfiles
```

If the command doesn't return any output, it means the configuration was successfully applied.
If it returns an error, it indicates that some files already exist in the target directory, and `stow` won't overwrite them to protect your original file. You need to move or back up that file.
**After installation, make sure not to delete the main dotfiles folder you cloned to avoid broken symlinks!**

</details>

## KEYBINDINGS

| Category             | Keybinding                      | Action                                   |
| -------------------- | ------------------------------- | ---------------------------------------- |
| **Applications**     | `Super + Return`                | Launch Alacritty (terminal)              |
|                      | `Super + F`                     | Open Thunar (file manager)               |
|                      | `Super + D`                     | Open Appmenu                             |
|                      | `Super + Escape`                | Open Powermenu                           |
|                      | `Super + F11`                   | Take a screenshot                        |
|                      | `Super + R`                     | Reload SXHKD configuration               |
| **BSPWM Management** | `Super + Ctrl + Shift + Q`      | Quit BSPWM (for emergency only)          |
|                      | `Super + Shift + R`             | Restart BSPWM                            |
|                      | `Super + Shift + W`             | Close the focused app                    |
|                      | `Super + Shift + K`             | Kill all instances of the focused app    |
|                      | `Super + M`                     | Toggle layout (tiled/monocle)            |
|                      | `Super + T`                     | Set window to tiled                      |
|                      | `Super + Shift + T`             | Set window to pseudo-tiled               |
|                      | `Super + S`                     | Set window to floating                   |
|                      | `Super + F`                     | Set window to fullscreen                 |
|                      | `Super + Ctrl + M`              | Mark a node                              |
|                      | `Super + Ctrl + X`              | Lock a node                              |
|                      | `Super + Ctrl + Y`              | Make a node sticky                       |
|                      | `Super + Ctrl + Z`              | Make a node private                      |
| **Navigation**       | `Super + H/J/K/L`               | Focus node to the left/down/up/right     |
|                      | `Super + Shift + H/J/K/L`       | Swap node to the left/down/up/right      |
|                      | `Super + P`                     | Focus parent node                        |
|                      | `Super + B`                     | Focus brother node                       |
|                      | `Super + Comma`                 | Focus first node                         |
|                      | `Super + Period`                | Focus second node                        |
|                      | `Super + C`                     | Focus next window                        |
|                      | `Super + Shift + C`             | Focus previous window                    |
|                      | `Super + BracketLeft`           | Focus previous desktop                   |
|                      | `Super + BracketRight`          | Focus next desktop                       |
|                      | `Super + Grave`                 | Focus last node                          |
|                      | `Super + Tab`                   | Focus last desktop                       |
|                      | `Super + O`                     | Focus older node in history              |
|                      | `Super + I`                     | Focus newer node in history              |
|                      | `Super + 1-9`                   | Focus desktop 1-9                        |
|                      | `Super + Shift + 1-9`           | Send node to desktop 1-9                 |
| **Preselection**     | `Super + Ctrl + H/J/K/L`        | Preselect direction (left/down/up/right) |
|                      | `Super + Ctrl + 1-9`            | Preselect ratio (0.1-0.9)                |
|                      | `Super + Ctrl + Space`          | Cancel preselection for focused node     |
|                      | `Super + Ctrl + Shift + Space`  | Cancel preselection for all nodes        |
| **Resize & Move**    | `Super + Alt + H/J/K/L`         | Expand window (left/down/up/right)       |
|                      | `Super + Alt + Shift + H/J/K/L` | Contract window (right/up/down/left)     |
|                      | `Super + Left/Down/Up/Right`    | Move floating window                     |

_Keybindings may change over time to fit my workflow, but for now, they’re mostly based on i3’s default settings._

## LICENSE

This project is licensed under the **[MIT License](https://opensource.org/license/mit)**.

<div align="center">
    <sub>This project was created by josterand and is licensed under the MIT License with no warranty.</sub>
</div>
