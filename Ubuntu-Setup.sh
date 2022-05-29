case $( echo "$1" | tr '[:upper:]' '[:lower:]' ) in
    1|ubuntu)
        printf 'Ubuntu Desktop Environment.'
        sudo apt update 
        sudo apt install ubuntu-desktop
    ;;
    2|ukui)
        printf 'UKUI Desktop Environment.'
        sudo apt update
        sudo add-apt-repository ppa:ubuntukylin-members/ukui -y
        sudo apt install ukui-desktop-environment
    ;;
    3|lxde)
        printf 'LXDE Desktop Environment.'
        sudo apt update
        sudo apt install lxqt sddm -y
    ;;
    4|mate)
        printf 'Mate Desktop Environment.'
        sudo apt update
        sudo apt install ubuntu-mate-desktop -y
    ;;
    5|budgie)
        printf 'Budgie Desktop Environment.'
        sudo apt update
        sudo apt install ubuntu-budgie-desktop -y
    ;;
    6|kdep)
        printf 'KDE Plasma Desktop Environment.'
        sudo apt update
        sudo apt install tasksel
        sudo tasksel install kubuntu-desktop
    ;;
    7|deepin)
        printf 'Deepin Desktop Environment.'
        sudo apt update
        sudo add-apt-repository ppa:ubuntudde-dev/stable -y
        sudo apt install ubuntudde-dde
    ;;
    8|xfce)
        printf 'XFCE Desktop Environment.'
        sudo apt update
        sudo apt install xfce4
        sudo chmod 777 /home/runneradmin/
        sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
    ;;
    9|cinnamon)
        printf 'Cinnamon Desktop Environment.'
        sudo apt update
        sudo apt install cinnamon-desktop-environment
    ;;
    10|unity)
        printf 'Unity Desktop Environment.'
        sudo apt update
        sudo apt install ubuntu-unity-desktop
    ;;
    11|xubuntu)
        printf 'Xubuntu Desktop Environment.'
        sudo apt update
        sudo apt install tasksel
        sudo tasksel install xubuntu-desktop
    ;;
    12|kubuntu)
        printf 'Kubuntu Desktop Environment.'
        sudo apt update
        sudo apt install tasksel
        sudo tasksel install kubuntu-desktop
    ;;
    13|lubuntu)
        printf 'Lubuntu Desktop Environment.'
        sudo apt update
        sudo apt install tasksel
        sudo tasksel install lubuntu-desktop
    ;;
    14|studio)
        printf 'Ubuntu Studio Desktop Environment.'
        sudo apt update
        sudo apt install tasksel
        sudo tasksel install ubuntustudio-desktop
    ;;
    15|kylin)
        printf 'Ubuntu Kylin Desktop Environment.'
        sudo apt update
        sudo apt install ubuntukylin-desktop
    ;;
    *)
        printf 'The desktop you selected is not in the list'
    ;;
esac