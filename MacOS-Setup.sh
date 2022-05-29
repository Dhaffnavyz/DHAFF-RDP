sudo mdutil -i off -a
sudo dscl . -create /Users/$3
sudo dscl . -create /Users/$3 UserShell /bin/bash
sudo dscl . -create /Users/$3 RealName $3
sudo dscl . -create /Users/$3 UniqueID 1001
sudo dscl . -create /Users/$3 PrimaryGroupID 80
sudo dscl . -create /Users/$3 NFSHomeDirectory /Users/vncuser
sudo dscl . -passwd /Users/$3 $4
sudo dscl . -passwd /Users/$3 $4
sudo createhomedir -c -u $3 > /dev/null
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -allowAccessFor -allUsers -privs -all
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -clientopts -setvnclegacy -vnclegacy yes 

echo $4 | perl -we 'BEGIN { @k = unpack "C*", pack "H*", "1734516E8BA8C5E2FF1C39567390ADCA"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack "C*", $_; foreach (@k) { printf "%02X", $_ ^ (shift @p || 0) }; print "\n"' | sudo tee /Library/Preferences/com.apple.VNCSettings.txt

sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -restart -agent -console
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate

brew install --cask ngrok
brew install --cask google-chrome
brew install --cask teamviewer

ngrok authtoken $1
ngrok tcp 5900 --region=$2 &
