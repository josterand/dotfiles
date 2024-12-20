# Installation
This rice is designed to be easily installed. I structured the folders so that it can be installed in various ways: the smooth way using `GNU Stow`, the automatic way using the provided installation script, and the manual way which might require a bit more effort.

## Steps
1. The first thing you need to do regardless of the method you choose is to make sure you clone this repo into your `$HOME` folder. Not anywhere else.
```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
```

2. Next, please choose one of the methods below:
<details>
<summary><b>Smooth way: `GNU Stow` (Recommended)</b></summary>

You just need to install `GNU Stow` on your machine first. `GNU Stow` is a symlink management tool that allows you to manage separate software packages or data in separate directories, and make them appear as if they are installed in a single directory tree.

**Debian / Ubuntu / Linux Mint based systems**
```bash
sudo apt install stow
```

**Arch based systems**
```bash
sudo pacman -S stow
```

**Red Hat based systems (Fedora)**
```bash
sudo dnf install stow
```

After installing `GNU Stow`, you just need to "stow" into your dotfiles folder. You will see that the dotfiles folder will be installed as symlinks in your system.
```bash
stow $HOME/dotfiles
```

To remove the created symlinks, simply run the command
```bash
stow -D $HOME/dotfiles
```
</details>

<details>
<summary><b>Automatic way: Installation Script</b></summary>

I have prepared an installation script that will automatically copy the configuration files and folders from this repo into your system. Just run the command below

**Give permission to the script so it can run**
```bash
chmod +x $HOME/dotfiles/install.sh
$HOME/dotfiles/install.sh
```

That's it, the files will be copied into your system.
</details>

<details>
<summary><b>Manual way: Use Terminal</b></summary>

If you are paranoid and don't trust any scripts from the internet, this is the way for you. This method basically involves manually copying the files from this repo. All these steps are actually automated by the installation script I have prepared.

**Copy all contents of the configuration folder**
```bash
cp -r $HOME/dotfiles/.config/* $HOME/.config/
```

**Copy the bin and font folders in `.local`**
```bash
cp -r $HOME/dotfiles/.local/* $HOME/.local/
```
</details>

3. After installing, you can log out of your DE or WM, and then log back in. Enjoy this rice!
