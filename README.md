<div align="center">
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/Embeds/banner.png" alt="GITHUB BANNER HERE">
</div>

<br>
<br>

<div align="center">
    <a href="#overview"><kbd> <br> Overview <br> </kbd></a>&ensp;&ensp;
    <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
    <a href="#components"><kbd> <br> Components <br> </kbd></a>&ensp;&ensp;
    <a href="#keybindings"><kbd> <br> Keybindings <br> </kbd></a>&ensp;&ensp;
</div>

## OVERVIEW

<div align="center">
    <img src="https://raw.githubusercontent.com/josterand/assets/refs/heads/main/dotfiles/Embeds/showcase.png" alt="Desktop Showcase">
</div>

This setup is based on **i3** and features:
- ✅ Clean and simple window management
- ✅ Fast key-driven workflow
- ✅ Minimalist design with essential components
- ✅ Easy customization and expandability

## INSTALLATION

### **1. Prerequisites**

Ensure your system has the following installed before proceeding:

-   **Git** → for cloning repositories
-   **GNU Stow** → for managing dotfiles
-   **i3** → tiling window manager

Install them via package manager:

```bash
sudo apt install git stow i3
```

### **2. Cloning & Applying Configs**

Clone this repository and use **Stow** to apply configurations:

```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
stow -d $HOME/dotfiles
```

To remove configurations:

```bash
stow -D -d $HOME/dotfiles
```

**💡 Note:** You can also install configs manually by copying the needed files. Always back up your existing rice and config files before applying new ones!

## COMPONENTS

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

---

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
| **Mod+Shift+E**                    | Open power menu                           |
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
