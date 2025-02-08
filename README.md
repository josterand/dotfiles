<div align="center">
    <img src="" alt="GITHUB BANNER HERE">
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
    <img src="" width=360 alt="SHOWCASE HERE">
    <img src="" width=360 alt="SHOWCASE HERE">
</div>

## INSTALLATION

I highly recommend using `GNU Stow` for installation. This ensures a safe and non-destructive setup without messing up other system files.
The repo structure is already designed to work seamlessly with Stow.
You can install `stow` via your Linux distro's package manager.

1. First, install Stow and then clone this repo into your `$HOME` directory or `~/`.
2. Navigate to `~/dotfiles` and run Stow:

Run the following commands:

```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
stow -d $HOME/dotfiles
```

To uninstall, just de-stow the config files:

```bash
stow -D -d $HOME/dotfiles
```

You can also install configs individually depending on your needs. For example, if you only need the Alacritty config, simply copy `../.config/alacritty` to your own config folder, like `~/.config/`.

> [!WARNING]
> Always back up your existing rice and config files before applying new ones!

## COMPONENTS

Here’s a list of components I use to set up my i3WM environment.
Some are required, while others are optional. Feel free to swap them with alternatives based on your preferences.

#### A. FONTS

-   **[JetBrainsMonoNerd Font](https://www.nerdfonts.com/font-downloads)** or any other monospace nerd font for icons in the bar and terminal.
-   **[Inter Font](https://fonts.google.com/specimen/Inter)** for UI elements.

Why these fonts? Simple. They have an open-source license (OFL), are highly readable, and look clean and elegant—perfect for a minimalistic setup.

#### B. SUPPORTING APPLICATIONS

These are the supporting apps and packages I use.
“Optional” means you can replace them with alternatives, but make sure they work well with i3WM.

| Use Case            | Package       | Requirement |
| ------------------- | ------------- | ----------- |
| Window Manager      | i3-WM         | Required    |
| Terminal            | Alacritty     | Optional    |
| Launcher            | Rofi          | Required    |
| Notification Daemon | Dunst         | Required    |
| Wallpaper Setter    | Feh           | Optional    |
| Keyring             | Gnome Keyring | Optional    |
| Appearance Setter   | LX Appearance | Optional    |
| Polkit Daemon       | LX Polkit     | Optional    |

## KEYBINDINGS

| **Keybinds**                       | **What It Does**                        | **Notes**           |
| ---------------------------------- | --------------------------------------- | ------------------- |
| **Mod+Enter**                      | Open terminal                           | -                   |
| **Mod+Shift+W**                    | Close active window                     | -                   |
| **Mod+D**                          | Open `dmenu_run`                        | -                   |
| **Mod+J**                          | Move focus to the left window           | -                   |
| **Mod+K**                          | Move focus to the window below          | -                   |
| **Mod+L**                          | Move focus to the window above          | -                   |
| **Mod+;**                          | Move focus to the right window          | -                   |
| **Mod+Shift+J**                    | Move the window to the left             | -                   |
| **Mod+Shift+K**                    | Move the window down                    | -                   |
| **Mod+Shift+L**                    | Move the window up                      | -                   |
| **Mod+Shift+;**                    | Move the window to the right            | -                   |
| **Mod+H**                          | Split layout horizontally               | -                   |
| **Mod+V**                          | Split layout vertically                 | -                   |
| **Mod+F**                          | Toggle fullscreen                       | -                   |
| **Mod+E**                          | Toggle split layout mode                | -                   |
| **Mod+Shift+Space**                | Toggle floating mode                    | -                   |
| **Mod+Space**                      | Switch between tiling and floating mode | -                   |
| **Mod+R**                          | Enter Resize Mode                       | -                   |
| **Left Arrow**                     | Shrink window width                     | Only in Resize Mode |
| **Right Arrow**                    | Expand window width                     | Only in Resize Mode |
| **Up Arrow**                       | Shrink window height                    | Only in Resize Mode |
| **Down Arrow**                     | Expand window height                    | Only in Resize Mode |
| **Enter**                          | Exit Resize Mode                        | Only in Resize Mode |
| **Escape**                         | Exit Resize Mode                        | Only in Resize Mode |
| **Mod+R**                          | Exit Resize Mode                        | Only in Resize Mode |
| **Mod+1** to **Mod+0**             | Switch to workspace 1–10                | -                   |
| **Mod+Shift+1** to **Mod+Shift+0** | Move window to workspace 1–10           | -                   |
| **Mod+Shift+C**                    | Reload i3 config                        | -                   |
| **Mod+Shift+R**                    | Restart i3                              | -                   |
| **Mod+Shift+E**                    | Show exit confirmation for i3           | -                   |

Keybindings may change over time to fit my workflow, but for now, they’re mostly based on i3’s default settings.

---

###### _<div align="center"><sub>This project was created by josterand and is licensed under the MIT License with no warranty.</sub></div>_
