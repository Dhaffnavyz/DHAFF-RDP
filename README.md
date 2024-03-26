## RDP Windows, Ubuntu & MacOS
 #NEWWW UPDATE RDP & VPS TERBARU 2024
## DNazCode Net VPS/VPS BOT

[![OS - Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/en-us/windows-server)
[![OS - Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![OS - MAcOS](https://img.shields.io/badge/MacOs-000000?style=for-the-badge&logo=Apple&logoColor=)](https://www.apple.com/macos/server/)

[![GitHub followers](https://img.shields.io/github/followers/tahaluindo.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/dnazcode)
[![GitHub stars](https://img.shields.io/github/stars/tahaluindo/Sofware-Tools.svg?style=social&label=Star)](https://github.com/dnazcode/DHAFF-RDP)

# Windows-RDP-ACTIONS


## Reverse RDP into Windows on GitHub Actions

Pernah bertanya-tanya seperti apa tampilan Desktop Windows Runners di GitHub Actions? Fungsionalitas ini seperti fungsi RDP Appveyor untuk pekerja Windows mereka:

https://www.appveyor.com/docs/how-to/rdp-to-build-worker/

### SECRET KEYS

You need set secrets on settings → (NGROK or CF)

* `CF_DOMAIN`  For Cloudflare Custom Domain mode
* `NGROK_AUTH_TOKEN`  Needed only for NGROK mode
* `NGROK_REGION`  Needed only for NGROK mode (options: `us`,`eu`,`ap`,`au`,`sa`,`jp`,`in`)
* `PASSWORD`  RDP password
* `TG_CHAT_ID`  Telegram user id for get login url
* `TG_TOKEN`  Telegram bot token for get message from bot

## Usage

These steps should be useful for debugging broken builds directly on the build worker. Use this project as reference and toss the steps into your project after some failing part of the build for introspection.

### Option 1 (Easiest way 🚑- No sound) LANG ID

1) Go https://remotedesktop.google.com/headless and login if needed.
2) Copy Powershell command that page.
3) Go actions tab in your forked repo.
4) Select `Chrome Remote Desktop`
5) Trigger action with your desired 6 digit pin and paste command in step 1.
6) Go again step 1 link in remote Support tab.
7) When setup finished , you can see the machine in list , write your pin and connect.
8) Enjoy! ☕
9) When you're done introspecting, cancel the job.

### Opsi 2 (Cara mudah 🚘)

1) Dapatkan token autentikasi terowongan di: https://dashboard.ngrok.com/auth .
2) Di bawah pengaturan repositori, buat rahasia bernama `NGROK_AUTH_TOKEN`, `NGROK_REGION`,`TG_TOKEN`, `TG_CHAT_ID` dan `PASSWORD`
3) Memicu NGROK di halaman tindakan.
4) Tunggu hingga langkah terakhir yang akan hang selamanya karena terhubung ke ngrok dan membuat terowongan terbalik.
5) Tunggu dari bot telegram untuk mendapatkan url
6) Hubungkan ke kombinasi host dan port dengan klien RDP pilihan Anda.
7) Gunakan nama pengguna `runneradmin` dan gunakan `PASSWORD` yang Anda tetapkan dalam rahasia
8) Selamat menikmati! ☕
9) Setelah selesai introspeksi, batalkan pekerjaan itu.


---
### Opsi 3 (Lebih sulit namun performanya lebih baik ✈)

1) Unduh [cloudflared.exe](https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe)
2) Di bawah pengaturan repositori, buat rahasia bernama `TG_TOKEN`, `TG_CHAT_ID` dan `PASSWORD`
3) Memicu `cloudflared` di halaman tindakan.
4) Tunggu dari bot telegram untuk mendapatkan url dan menyalin
5) Buka terminal/cmd dan jalankan ini:
`cloudflared-windows-amd64.exe akses rdp --nama host url.from.telegram.bot --url localhost:portfromlocal`
     > Anda dapat mengatur port apa pun yang tersedia ke `portfromlocal`
6) Kemudian buka program rdp connect dan jalankan `localhost:portfromlocal` saja
7) Gunakan nama pengguna `runneradmin` dan gunakan `PASSWORD` yang Anda tetapkan dalam rahasia
8) **TADAAAAA!!!** penundaan rendah kinerja lebih baik ✈

---
### Opsi 4 (Hardcore tapi performa terbaik 🚀)

1) Unduh [cloudflared.exe](https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe)
2) Di bawah pengaturan repositori, buat rahasia bernama `CF_DOMAIN` ,`TG_TOKEN`, `TG_CHAT_ID` dan `PASSWORD`
3) Memicu `cloudflared_login` di halaman tindakan.
4) Tunggu dari bot telegram untuk mendapatkan url
5) Klik tautan dan login akun Cloudflare Anda, Pilih domain Anda yang ingin Anda gunakan
6) Buka terminal/cmd dan jalankan ini:
`cloudflared-windows-amd64.exe akses rdp --nama host SUBDOMAIN.YOUR.CF.DOMAIN.HERE --url localhost:portfromlocal`
     > Anda dapat mengatur port apa pun yang tersedia ke `portfromlocal`
7) Kemudian buka program rdp connect dan jalankan `localhost:portfromlocal` saja
8) **TADAAAAA!!!** penundaan rendah kinerja lebih baik 🚀

### Option 1 (Easiest way 🚑- No sound) LANG ENG

1) Go https://remotedesktop.google.com/headless and login if needed.
2) Copy Powershell command that page.
3) Go actions tab in your forked repo.
4) Select `Chrome Remote Desktop`
5) Trigger action with your desired 6 digit pin and paste command in step 1.
6) Go again step 1 link in remote Support tab.
7) When setup finished , you can see the machine in list , write your pin and connect.
8) Enjoy! ☕
9) When you're done introspecting, cancel the job.


### Option 2 (Easy way 🚘) 

1) Get the tunnel auth token at: https://dashboard.ngrok.com/auth .
2) Under the repository's settings, make a secrets called `NGROK_AUTH_TOKEN`, `NGROK_REGION`,`TG_TOKEN`, `TG_CHAT_ID` and `PASSWORD`
3) Trigger a NGROK in actions page.
4) Wait until the last step which will hang forever as it connects to ngrok and sets up the reverse tunnel.
5) Wait from telegram bot to get url
6) Connect to the host and port combination with your RDP client of choice.
7) Use the username `runneradmin` and use the `PASSWORD` you set in secrets
8) Enjoy! ☕
9) When you're done introspecting, cancel the job.


---
### Option 3 (Harder but better performance ✈)

1) Download [cloudflared.exe](https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe)
2) Under the repository's settings, make a secrets called `TG_TOKEN`, `TG_CHAT_ID` and `PASSWORD`
3) Trigger a `cloudflared` in actions page. 
4) Wait from telegram bot to get url and copy
5) Open terminal/cmd and run this:
`cloudflared-windows-amd64.exe access rdp --hostname url.from.telegram.bot --url localhost:portfromlocal`
    > You can set any available port to `portfromlocal`
6) Then open rdp connect program and run just `localhost:portfromlocal`
7) Use the username `runneradmin` and use the `PASSWORD` you set in secrets
8) **TADAAAAA!!!** low delay more performance ✈

---
### Option 4 (Hardcore but best performance 🚀)

1) Download [cloudflared.exe](https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.exe)
2) Under the repository's settings, make a secrets called `CF_DOMAIN` ,`TG_TOKEN`, `TG_CHAT_ID` and `PASSWORD`
3) Trigger a `cloudflared_login` in actions page.
4) Wait from telegram bot to get url
5) Click link and login your Cloudflare account, Select your domain What you want to use 
6) Open terminal/cmd and run this:
`cloudflared-windows-amd64.exe access rdp --hostname SUBDOMAIN.YOUR.CF.DOMAIN.HERE --url localhost:portfromlocal`
    > You can set any available port to `portfromlocal`
7) Then open rdp connect program and run just `localhost:portfromlocal`
8) **TADAAAAA!!!** low delay more performance 🚀

## Useful Info

* Runners can run jobs for up to 6 hours. So you have about 6 hours minus the minute setup time to poke around in these runners.
* If using for introspection, add the [`continue-on-error`](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions) property to the failing step before these remote connection steps.

## Future

Maybe as a GitHub Action? Oh well, this is fairly simple anyway. Or using something more FOSS than ngrok like https://github.com/TimeToogo/tunshell ?

## Similar Projects

These projects also allow remote introspection of very temporary environments like in GitHub Actions or other environments. 

* Shell-Only (macOS, Linux, and also Windows)
  * https://tunshell.com
* macOS VNC
  * https://github.com/dakotaKat/fastmac-VNCgui

---
This repo based on [Nelson Chen's reverse-rdp-windows-github-actions repo](https://github.com/nelsonjchen/reverse-rdp-windows-github-actions) and much more developed by [Kaan Dikeç](github.com/dikeckaan) and [Muhammed Galip Uludağ](https://github.com/mguludag/)

Thanks for [c9ffin](https://github.com/c9ffin/rdpwin) for chrome remote desktop idea

<details>
<summary>Baca Selengkapnya.</summary>

------

> ***⚠️ PERINGATAN*** > LANG ID
> Bukan untuk Penambangan Mata Uang Kripto.
> > jangan tutup terminal starter (Terhubung ke Github).

> ***⚠️ WARNING***  LANG ENG
> Not for Cryptocurrency Mining.                                              
> don't close the starter terminal (Connected to Github).

## Speak RDP/VPS:
<p align="canter">
  
- RAM: 6GB

- OS: Windows 10
 
 - Core:4

 - Intel Xeon/ AMD Ryzen

 - 160GB SSD nvme
 - 
 - Free
</p>

<p align="canter">
  
- RAM: 8GB

- OS: Windows 10
 
 - Core:4

 - Intel Xeon/ AMD Ryzen

 - 160GB SSD nvme
 - 
 - Free
</p>

<p align="canter">
  
- RAM: 12GB

- OS: Windows 10
 
 - Core:6

 - Intel Xeon/ AMD Ryzen

 - 190GB SSD nvme
 - 
 - Butuh Lisensi Key
 - Untuk Lisensi Key
 - Chat Admin Dnazcode
</p>

<p align="canter">
  
- RAM: 16GB

- OS: Windows 10
 
 - Core:8

 - Intel Xeon/ AMD Ryzen

 - 256GB SSD nvme

 - Status CommingSoon -
   
 - Butuh Lisensi Key
 - Untuk Info Lebih Lanjut
 - Chat Admin Dnazcode
</p>

### Tunnel Servers👻.

* us - United States (Ohio)
* eu - Europe (Frankfurt)
* ap - Asia/Pacific (Singapore)
* au - Australia (Sydney)
* sa - South America (Sao Paulo)
* jp - Japan (Tokyo)
* in - India (Mumbai)
* id - Indonesia (Jakarta)

### Cara menjalankan proyek.

<detail>
     <ringkasan>Ngrok (RDP)</ringkasan>
    
------ BAHASA ENG

* Klik Fork di pojok kanan layar untuk menyimpannya ke Github Anda.
* Kunjungi https://dashboard.ngrok.com untuk mendapatkan **Ngrok Auth Token**.
* Di Github, buka Action> Windows (Ngrok RDP)> Jalankan alur kerja.
* Dalam Nilai: kunjungi https://dashboard.ngrok.com/auth/your-authtoken Salin dan Tempel Authtoken Anda ke dalamnya.
* Password minimal 8-10 dengan angka dan karakter biarkan kosong jika ingin menggunakan password otomatis.
* Tekan Jalankan alur kerja.
* Muat ulang halaman dan tekan Windows (Ngrok RDP)> build.
* Tekan panah bawah pada Akun untuk Hubungkan ke RDP Anda untuk mendapatkan IP, Pengguna, Kata Sandi.
------

</detail>

<detail>
     <ringkasan>Google Desktop Jarak Jauh.</summary>

------ BAHASA ENG

* Kunjungi https://remotedesktop.google.com/headless untuk mendapatkan **Kode Google Remote Desktop**.
* Klik Mulai> Berikutnya> Izinkan> Salin Windows (Windows PowerShell) / Ubuntu (Debian Linux).
* Di Github, buka Action> Windows/Ubuntu (Google Remote Desktop)> Jalankan alur kerja.
*Dalam Nilai: Tempel Kode.
* Tekan Jalankan alur kerja.
* Muat ulang halaman dan tekan Windows/Ubuntu (Google Remote Desktop)> build.
* Tunggu dan kunjungi https://remotedesktop.google.com/access untuk menghubungkan rdp.

------

</detail>

<detail>
     <ringkasan>Ngrok (Penampil NVC)</summary>

<br>

**❕ TIPS**
Gunakan te teamviewer untuk menghindari lag.

------ BAHASA ENG

* Kunjungi https://www.realvnc.com/en/connect/download/viewer untuk mengunduh **NVC Viewer**.
* Instal Perangkat Lunak.
* Kunjungi https://dashboard.ngrok.com untuk mendapatkan **Ngrok Auth Token**.
* Di Github, buka Action> MacOS (Ngrok VNC Viewer)> Jalankan alur kerja.
* Dalam Nilai: kunjungi https://dashboard.ngrok.com/auth/your-authtoken Salin dan Tempel Authtoken Anda ke dalamnya.
*Password minimal 8-10 angka/karakter.
* Tekan Jalankan alur kerja.
* Muat ulang halaman dan tekan MacOS (Ngrok VNC Viewer)> build.
* Tekan panah bawah pada IP untuk Hubungkan ke RDP Anda untuk mendapatkan IP.
* Buka VNC Viewer masukkan ip di kolom "Masukkan Alamat Server VNC atau cari" dan masukkan juga sambungkan.

------

### How to run the project. 

<details>
    <summary>Ngrok (RDP)</summary>
    
------ LANG ENG

* Click Fork in the right corner of the screen to save it to your Github.
* Visit https://dashboard.ngrok.com to get **Ngrok Auth Token**.
* In Github go to Action> Windows (Ngrok RDP)> Run workflow.
* In Value: visit https://dashboard.ngrok.com/auth/your-authtoken Copy and Paste Your Authtoken into.
* Password minimum 8-10 with numbers and characters leave blank if you want to use automatic password.
* Press Run workflow.
* Reload the page and press Windows (Ngrok RDP)> build.
* Press the down arrow on Account for Connect to your RDP to get IP, User, Password.
------

</details>

<details>
    <summary>Google Remote Desktop.</summary>

------ LANG ENG

* Visit https://remotedesktop.google.com/headless to get **Google Remote Desktop Code**.
* Click Start> Next> Allow> Copy Windows (Windows PowerShell) / Ubuntu (Debian Linux).
* In Github go to Action> Windows/Ubuntu (Google Remote Desktop)> Run workflow.
* In Value: Paste Code.
* Press Run workflow.
* Reload the page and press Windows/Ubuntu (Google Remote Desktop)> build.
* Wait and visit https://remotedesktop.google.com/access to connect rdp.

------

</details>

<details>
    <summary>Ngrok (NVC Viewer)</summary>

<br>

**❕ TIPS**  
Use the te teamviewer to avoid the lag.

------ LANG ENG

* Visit https://www.realvnc.com/en/connect/download/viewer to download **NVC Viewer**.
* Install Software.
* Visit https://dashboard.ngrok.com to get **Ngrok Auth Token**.
* In Github go to Action> MacOS (Ngrok VNC Viewer)> Run workflow.
* In Value: visit https://dashboard.ngrok.com/auth/your-authtoken Copy and Paste Your Authtoken into.
* Password minimum 8-10 numbers/characters.
* Press Run workflow.
* Reload the page and press MacOS (Ngrok VNC Viewer)> build.
* Press the down arrow on IP for Connect to your RDP to get IP.
* Open VNC Viewer put ip in the field "Enter a VNC Server Address or search" and enter too connect.

------

</details>
<details>
<summary>Ubuntu Desktop</summary>

------

### Ubuntu Desktop. DISTRO LINUX COMPITABLE

Number | Code | Desktop | Time Install
----- | ----- | ----- | ----- 
`1` | `ubuntu` | [Ubuntu](https://ubuntu.com/desktop) | 5-7 Minutes
`2` | `ukui` | [UKUI](https://www.ukui.org) | 3-5 Minutes
`3` | `lxde` | [LXDE](https://www.lxde.org) | 3-5 Minutes
`4` | `mate` | [Mate](https://mate-desktop.org) | 4-7 Minutes
`5` | `budgie` | [Budgie](https://ubuntubudgie.org) | 7-9 Minutes
`6` | `kdep` | [KDE Plasma](https://kde.org/plasma-desktop) | 9-11 Minutes
`7` | `deepin` | [Deepin](https://www.deepin.org/zh/dde) | 2-4 Minutes
`8` | `xfce` | [XFCE ](https://www.xfce.org) | 2-4 Minutes
`9` | `cinnamon` | [Cinnamon](https://linuxmint.com) | 6-8 Minutes
`10` | `unity` | [Unity](https://ubuntuunity.org) | 5-9 Minutes
`11` | `xubuntu` | [Xubuntu](https://xubuntu.org/) | 15-19 Minutes
`12` | `kubuntu` | [Kubuntu](https://kubuntu.org) | 13-18 Minutes
`13` | `lubuntu` | [Lubuntu](https://lubuntu.me) | 10-20 Minutes
`14` | `studio` | [Ubuntu Studio](https://ubuntustudio.org) | 11-15 Minutes
`15` | `kylin` | [Ubuntu Kylin](https://ubuntukylin.com) | 7- 9 Minutes
</details>
