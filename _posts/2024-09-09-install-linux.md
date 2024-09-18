---
layout: post
title: Installing Linux on my old MacBook Pro
subtitle: 
categories: markdown
tags: [Linux, Mint, MacOS]
---

I've been a huge fan of Apple products ever since I bought my first MacBook. 
I love how instinctive it is to use them and I've only experienced a low amount of crashes.
As a company, Apple sadly has many shortcomings which I won't even try to list nor deny, but when it comes to the final product: it simply works.

Today, as the rain falls down on Zürich, I decided to retire my old MacBook Pro (Retina, 13-inch, Early 2015) because, after nine years of loyal service, it doesn't meet my needs anymore.
Through my studies and my current job, I've come to work more and more with Linux servers.
This got me thinking: Why don't I install Linux on my old laptop?
This would allow me to have my own little Linux machine to play around with as well as extend the lifespan of my hardware.
I hope you'll find the following instructions usefull and that somehow this will help make better use of the devices you already own instead of switching directly to a new one.

### Hardware specs
- **Processor** 3.1 GHz Dual-Core Intel Core i7
- **Memory** 16 GB 1867 MHz DDR3
- **Graphics** Intel Iris Graphics 6100 1536 MB

### Backup
Before installing Linux on your machine, it is important to backup all your data and operating system in case anything goes south.

1. Store all data on an external hard drive using Time Machine
1. Store a copy of macOS Monterey on a flash drive
    - Download a full macOS installer from Apple
    - Connect a USB flash drive to your Mac (16 GB)
    - Launch "Disk Utility" (press Command + spacebar and start to type Disk Utility)
    - Click on "View" and select "Show All Devices"
    ![](/assets/images/others/linux_install/disk_utility_show_all.png)
    - Select the root drive of your flash drive in the sidebar (the next step won’t work if you only select the volume)
    ![](/assets/images/others/linux_install/disk_utility_select_device.png)
    - Click on "Erase"
    - Optional: Set the volume name (I entered "MONTEREY")
    - Choose "Mac OS Extended (Journaled)" as the Format
    - Choose "GUID Partition Map" as the Scheme
    ![](/assets/images/others/linux_install/disk_utility_erase.png)
    - Cick on "Erase"
    - Wait (this can take a few minutes)
    - Click on "Done"
    - Open the Terminal (press Command + spacebar and start to type Terminal)
    - Run the following command
        ```bash
        sudo /Applications/Install\ macOS\ Monterey.app/Contents/Resources/createinstallmedia --volume /Volumes/MONTEREY
        ```
    - Enter user password when prompted
    - Answer "Y" when prompted
    - Wait (this can take a few minutes)
    ![](/assets/images/others/linux_install/terminal_install_flash.png)
1. Done!

### Linux installation
<img src="/assets/images/others/linux_install/Linux_Mint_logo_without_wordmark.svg" width="200" height="200" />

I chose to install the Linux Mint (Cinnamon) as I've heard it is the most beginner friendly distribution out there.
At the time of this installation, Linux Mint 22 "Wilma" is the latest release.

1. Create a bootable USB stick
    - Download the official shasum `sha256sum.txt`
    - Download the official PGP signature `sha256sum.txt.gpg`
    - Verify the authenticity of the official shasum 
        ```bash
        gpg --verify sha256.txt.gpg sha256sum.txt
        ```
    - Download Linux Mint from one of the available mirrors
    - To get the shasum of the iso file you downloaded in the previous step, run
        ```bash
        sha256sum -b yourfile.iso
        ```
    - Verify the integrity of the shasum by comparing the two shasum. If they do not match, download the iso file from a different mirror.
    - Download and install Etcher
    - Insert your USB stick
    - Launch Etcher, select your iso file and your target flash drive (USB stick)
    - Flash!
1. Boot Linux Mint
    - Restart your laptop and hold the alt (or option) key
    - Select EFI Boot
    - Select "Start Linux Mint XX.X Cinnamon 64-bit
    - Play around with the live session
1. Install Linux Mint
    - Double click on "Install Linux Mint"
    - Select your language
    - Select your keyboard layout
    - Connect to the internet (I initially thought that the WiFi worked for me but I ran into troubles later on.)
    - Tick the box to install the multimedia codecs
    - Chose "Erase disk and install Linux Mint"
    - Select your timezone
    - Enter your details
    - Wait (this can take a few minutes)
    - Restart your machine
1. Update Linux kernel
    - Despite being connected to the WiFi, I could not access the internet through Firefox (Server not found). Running `ping -c 4 google.com` from the terminal did not work either. I went through the following steps to solve this issue.
    ![ping-google-fail](/assets/images/others/linux_install/ping_google_fail.png)
    ![update-manager-fail](/assets/images/others/linux_install/update_manager_wifi.png)
    ![firefox-google-fail](/assets/images/others/linux_install/firefox_fail.png)
    - Use tethering with your phone (in my case, I used an iPhone 12 mini, iOS 17.5.1)
    - Launch the "Update Manager"
    - Click on "Refresh"
    - Observe that an update is available for the Linux kernel
    - Click on "Install Updates"
    - Reboot
    - Disconnect the phone
    - Check that you are connected to your WiFi network
    - Successfully ping google from the terminal
    ![ping-google-success](/assets/images/others/linux_install/ping_google_success.png)
    - Successfully access google using Firefox
1. Done!

<br>

**References**

- [How to download and install macOS](https://support.apple.com/en-us/102662)
- [How to create a bootable USB macOS installer](https://www.macworld.com/article/671308/how-to-create-a-bootable-usb-macos-installer.html)
- [Verify your ISO image](https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html)
- [Etcher](https://etcher.balena.io/)
- [Boot Linux Mint](https://linuxmint-installation-guide.readthedocs.io/en/latest/boot.html)
- [Install Linux Mint](https://linuxmint-installation-guide.readthedocs.io/en/latest/install.html)
- [How to update kernel using tethering](https://forums.linuxmint.com/viewtopic.php?t=338105&start=20)