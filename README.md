## RDP Windows, Ubuntu & MacOS

## TahaluIndo X Rdp BOT

[![OS - Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/en-us/windows-server)
[![OS - Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![OS - MAcOS](https://img.shields.io/badge/MacOs-000000?style=for-the-badge&logo=Apple&logoColor=)](https://www.apple.com/macos/server/)

[![GitHub followers](https://img.shields.io/github/followers/tahaluindo.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/tahaluindo)
[![GitHub stars](https://img.shields.io/github/stars/tahaluindo/Sofware-Tools.svg?style=social&label=Star)](https://github.com/koleksibot/Koleksibot-RDP)

# Windows-RDP-ACTIONS


## Reverse RDP into Windows on GitHub Actions

Ever wonder what the Desktop of the Windows Runners on GitHub Actions looks like?

This functionality is like Appveyor's RDP functionality for their Windows workers:

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

### Option 1 (Easiest way 🚑- No sound) 

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

> ***⚠️ WARNING***  
> Not for Cryptocurrency Mining.                                              
> don't close the starter terminal (Connected to Github).

## Speak RDP:
<p align="canter">
  
- RAM: 6GB

- OS: Windows 10
 
 - Core:4
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

### How to run the project. 

<details>
    <summary>Ngrok (RDP)</summary>
    
------

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

------

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

------

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

### Ubuntu Desktop. 

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
