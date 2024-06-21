# About
This is the repo that contains all the configurations that make up my entire desktop. I use Window Manager i3 based on Linux Mint (well, it's stable and easy to use, so why not?) and a few other supporting packages. 

I created this repo with the aim of backing up my configuration and making it easier for me when reinstalling. Just in case something happens that requires me to reinstall. 

# Installation
### Step 1: Install
Before proceeding further, install the following packages:
- `i3` (It's clear what this repo is for, right?)
- `polybar` (for custom bar, replacement for i3status & i3blocs)
- `rofi` (for app launcher & custom powermanager launcher)
- `xcompmgr` (for super-lightweight compositor)
- `feh` (for wallpaper)
- `lxpolkit` (for password-request app launcher)

> Some app versions may be outdated if you use Mint's built-in `apt` to install them. It is highly recommended that you build them from the source of each packages. Please refer to each packages's repo or documentation.

I'm sure you Linux users know how to install packages and their dependencies if needed, right? If so, let's jump right in 

### Step 2: Copy the configuration files
1. Move all fonts in the 'fonts' folder of this repo to `/usr/share/fonts/<new-folder>`.
    > Please replace `<new-folder>` with the new folder you created. It can be a folder with the name `i3` or something else.
    
    and then run this command to refresh the font list 
    ``` bash
    $ fc-cache -fv
    ```
2. From this repo, specifically the `config` folder, move all the folders inside to the `~/.config/` directory.
3. There is nothing more to do. Log out of the session and then login to `i3`. Everything should work fine out of the box