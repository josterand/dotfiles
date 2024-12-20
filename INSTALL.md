# Instalasi
Rice ini didesain untuk dapat diinstall dengan mudah. Aku mendesain struktur foldernya agar dapat diinstall dengan berbagai cara, cara mulus menggunakan `GNU Stow`, cara otomatis menggunakan skrip installasi yang sudah aku sediakan, dan cara manual yang mungkin akan memerlukan sedikit tenaga ekstra.

## Langkah-langkah
1. Hal pertama yang kamu perlu lakukan terlepas dari cara apapun yang kamu gunakan adalah pastikan kamu meng-klon repo ini di folder `$HOME` kamu. Jangan ditempat lain.
```bash
cd $HOME
git clone https://github.com/josterand/dotfiles.git
```

2. Langkah berikutnya, silahkan pilih salah satu diantara cara-cara dibawah ini:
<details>
<summary><b>Cara mulus: `GNU Stow` (Direkomendasikan)</b></summary>

Kamu hanya perlu menginstall `GNU Stow` di mesinmu terlebih dahulu. `GNU Stow` adalah alat manajemen symlink yang memungkinkan kamu mengelola paket perangkat lunak atau data yang terpisah dalam direktori terpisah, dan membuatnya tampak seolah-olah terinstal dalam satu pohon direktori tunggal.

**Sistem berbasis Debian / Ubuntu / Linux Mint**
```bash
sudo apt install stow
```

**Sistem berbasis Arch**
```bash
sudo pacman -S stow
```

**Sistem berbasis Red Hat (Fedora)**
```bash
sudo dnf install stow
```

Setelah menginstall `GNU Stow`, maka kamu tinggal "stow" kedalam folder dotfiles kamu. Dan kamu akan melihat bahwa folder dotfiles itu akan terinstall dalam bentuk symlink di sistem kamu.
```bash
stow $HOME/dotfiles
```

Untuk menghapus symlink yang telah dibuat, cukup jalankan perintah
```bash
stow -D $HOME/dotfiles
```
</details>

<details>
<summary><b>Cara otomatis: Skrip Instalasi</b></summary>

Aku sudah menyiapkan skrip instalasi yang akan secara otomatis meng-copy file dan folder konfigurasi dari repo ini ke dalam sistem kamu. Caranya hanya tinggal menjalankan perintah dibawah ini

**Berikan izin kepada skrip agar skrip dapat berjalan**
```bash
chmod +x $HOME/dotfiles/install.sh
$HOME/dotfiles/install.sh
```

Itu saja, file-file akan ter-copy ke dalam sistem kamu.
</details>

<details>
<summary><b>Cara manual: Gunakan Terminal</b></summary>

Jika kamu adalah seorang paranoid yang tidak percaya skrip apapun dari internet, ini adalah cara yang cocok untuk kamu. Cara ini pada dasarnya adalah meng-copy file-file yang ada didalam repo ini secara manual. Semua langkah-langkah ini sebenarnya sudah terotomatisasi oleh skrip instalasi yang sudah saya siapkan.

**Copy semua isi folder konfigurasi**
```bash
cp -r $HOME/dotfiles/.config/* $HOME/.config/
```

**Copy folder bin dan font yang ada di `.local`**
```bash
cp -r $HOME/dotfiles/.local/* $HOME/.local/
```
</details>

3. Setelah menginstall, kamu bisa logout dari DE atau WM kamu, dan kemudian login kembali. Selamat menikmati rice ini!
