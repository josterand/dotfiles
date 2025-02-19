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

<img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/embeds/assets/images/dotfiles_desktop-showcase.png" alt="rice" align="right" width="480px">

I built this rice for my personal use. It follows the philosophy of _"the simpler, the better"_ meaning it's minimalist but still functional by only including the most essential features.

-   :computer: **Window Manager**: [i3 WM](https://i3wm.org/)
-   :pushpin: **Panel**: [i3bar](https://i3wm.org/i3bar/) with [i3status](https://i3wm.org/docs/i3status.html)
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

:bulb: **_To keep the repository lightweight, the component files used in this rice setup are not included here. You can download them from their official websites linked below, or you can visit the [additional repository](https://github.com/josterand/assets) where I store those files._**

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

_Keybindings may change over time to fit my workflow, but for now, they’re mostly based on i3’s default settings._

## LICENSE

This project is licensed under the **[MIT License](https://opensource.org/license/mit)**.

<div align="center">
    <sub>This project was created by josterand and is licensed under the MIT License with no warranty.</sub>
</div>
