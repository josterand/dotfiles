# Installation

This rice is designed to be easily installed. The folders are structured to allow various installation methods: the smooth way using `GNU Stow`, the automatic way using the provided installation script, and the manual way, which might require a bit more effort.

## Steps

1. First, regardless of the method you choose, clone this repository into your `$HOME` folder. Do not clone it elsewhere.

    ```bash
    cd $HOME
    git clone https://github.com/josterand/dotfiles.git
    ```

2. Next, choose one of the methods below:

<details>
<summary><b>Smooth way: GNU Stow (Recommended)</b></summary>

Install `GNU Stow` on your machine. It is a symlink management tool that allows you to manage separate software packages or data in separate directories and make them appear as if they are installed in a single directory tree.

**For Debian/Ubuntu/Linux Mint-based systems:**

```bash
sudo apt install stow
```

**For Arch-based systems:**

```bash
sudo pacman -S stow
```

**For Red Hat-based systems (Fedora):**

```bash
sudo dnf install stow
```

After installing `GNU Stow`, "stow" your dotfiles folder. This will create symlinks to the appropriate locations in your system.

```bash
stow -d $HOME/dotfiles
```

To remove the created symlinks, run:

```bash
stow -D -d $HOME/dotfiles
```

</details>

<details>
<summary><b>Automatic way: Installation Script</b></summary>

An installation script is provided to automatically copy the configuration files and folders from this repository into your system. Run the commands below:

**Give execute permission to the script:**

```bash
chmod +x $HOME/dotfiles/install.sh
$HOME/dotfiles/install.sh
```

The files will be copied into your system.

</details>

<details>
<summary><b>Manual way: Use Terminal</b></summary>

If you prefer not to trust any scripts from the internet, you can manually copy the files from this repository. The steps below replicate what the installation script does.

**Copy all contents of the `.config` folder:**

```bash
cp -r $HOME/dotfiles/.config/* $HOME/.config/
```

**Copy the `bin` and `font` folders into `.local`:**

```bash
cp -r $HOME/dotfiles/.local/* $HOME/.local/
```

</details>

3. After completing the installation, log out of your desktop environment (DE) or window manager (WM) and log back in. Enjoy this rice!
