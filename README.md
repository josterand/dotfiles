<div align="center">
    <h1>Josterand's BSPWM Dotfiles</h1>
    <img src="https://img.shields.io/github/repo-size/josterand/dotfiles?color=E8E8E4&labelColor=513663&style=for-the-badge">
    <img src="https://img.shields.io/badge/bspwm-E8E8E4?&logo=bspwm&labelColor=513663&logoColor=E8E8E4&style=for-the-badge">
    <br>
    <p>
        Overview || Philosophy || System || Installation
    </p>
</div>

<h2>Overview</h2>

<h2>Philosophy</h2>
<p>
    This is a Rice I built from scratch, specifically designed to work with the <strong>BSPWM</strong> Window Manager. It embodies a philosophy of minimalist yet functional design, allowing users to focus on the essential tasks at hand.
</p>
<p>
    This Rice features a minimalist <em>single-bar</em> setup that includes key infotainment elements users might need. It’s my flagship Rice that I’ll continue to use. As long as I stick with BSPWM, refinements, updates, new functionalities, and improvements will keep coming!
</p>

<h2>System</h2>
<ul>
    <li><strong>Operating System</strong>: EndeavourOS (Arch-based distro, BTW)</li>
    <li><strong>Window Manager</strong>: BSPWM (<em>with SXHKD keybind daemon</em>)</li>
    <li><strong>Terminal</strong>: Alacritty</li>
    <li><strong>Bar</strong>: Polybar</li>
    <li><strong>Launcher</strong>: Rofi</li>
</ul>

<details>
    <summary><h2>Installation</h2></summary>
    <p>This Rice is designed to be easily installed without modifying your system. We’ll use <code>GNU Stow</code> for installation. Follow the steps below in your terminal.</p>
    <p>Ensure you clone this repository in your root <code>$HOME</code> directory.</p>
    <pre><code>cd $HOME</code></pre>
    <p>Clone this repository into <code>$HOME</code>:</p>
    <pre><code>git clone https://github.com/josterand/dotfiles.git</code></pre>
    <p>Stow the configurations!</p>
    <pre><code>cd dotfiles
stow .</code></pre>
    <p>The dotfiles are now installed! However, you’ll need to install some additional dependencies on your machine. Follow and run these commands in your terminal:</p>
    <pre><code>cd ~/dotfiles
grep -vE '^\s*#|^\s*$' pkglist.txt > pkglist_clean.txt
sudo pacman -S --needed - < pkglist_clean.txt
rm -r pkglist_clean.txt</code></pre>
    <details>
        <summary><h3>Command Explanation:</h3></summary>
        <ul>
            <li><strong>cd ~/dotfiles</strong>: Switch to the <code>dotfiles</code> folder.</li>
            <li><strong>grep -vE</strong>: Remove comments and blank lines from <code>pkglist.txt</code>, saving it to <code>pkglist_clean.txt</code>.</li>
            <li><strong>sudo pacman -S --needed`</strong>: Install packages listed in <code>pkglist_clean.txt</code>, skipping already installed ones.</li>
            <li><strong>rm pkglist_clean.txt</strong>: Delete the temporary <code>pkglist_clean.txt</code> file.</li>
        </ul>
    </details>
<p>You can now log out of your current DE or WM and log back into BSPWM.</p>
</details>

