#/usr/bin/env sh

# .osx tweaks - succesfully tested on OSX 10.12 (Monterey)
mkdir -pv ~/bin ~/usr/src ~/usr/snapshots ~/tmp ~/mnt
ln -sf ~/usr/src ~/src

# ask for sudo rights upfront
sudo -v

# periodicaly update the sudo timestamp to keep the session active until this script ends.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# disable the boot sound effect
sudo nvram SystemAudioVolume=" "

# disable transparency
defaults write com.apple.universalaccess reduceTransparency -bool true

# set sidebar icon size (1 = small, 2 = medium, 3 = large)
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# setup scrollbar behavior (Always, WhenScrolling, Automatic)
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# reduce window resize time to its strict minimum (near to 0)
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# don't freakin' save to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# disable the "are-you sure you want to open this application downloaded from the internetz ?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# display ASCII control characters using caret notation in standard text views
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# reveal ip address, hostname and os x version when clicking on the clock in the login window.
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# check for software updates daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# disable the notification center and its icon in menubar
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# disable local Time Machine snapshots
hash tmutil &> /dev/null && sudo tmutil disable

# disable hibernation
sudo pmset -a hibernatemode 0

# disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# enable full keyboard access for all UI controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# enable keyboard repeat behavior
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# set a blazing fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# disable the god damn autocorrect
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# stop iTunes to respond to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# requires password right after sleep or screen save begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop/usr/snapshots"

# save screenshots into PNG format
defaults write com.apple.screencapture type -string "png"

# disable shadows in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# enable sub-pixel font rendering for non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# disable Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

# show external drives, mounted servers and removal media on the desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# show all files extension by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show Finder status bar
defaults write com.apple.finder ShowStatusBar -bool true

# show Finder path bar
defaults write com.apple.finder ShowPathbar -bool true

# allow for text selection in the Quick Look dialog
defaults write com.apple.finder QLEnableTextSelection -bool true

# display full path as Finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# when performing search in the Finder, search in the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# automatically open the Finder window when a new volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# use list-view in Finder by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# disable the warning when emptying trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# default securely trash things
defaults write com.apple.finder EmptyTrashSecurely -bool true

# enable Airdrop via ethernet and for older OS X versions
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# show user Library folder
chflags nohidden ~/Library

# expands File Info panes by default
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true

# don't animate opening application from the Dock
defaults write com.apple.dock launchanim -bool false

# speed up Mission Control animation speed
defaults write com.apple.dock expose-animation-duration -float 0.1

# disable the dashboard thing
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true

# remove auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# hide and show the Dock
defaults write com.apple.dock autohide -bool true

# prevent time machine for prompting to use a new hard drive or whatever as a backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# show CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# default sort the Activity Monitor by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# disable emoji substitution
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# disable continuous spell shecking
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# kill affected applications
for app in "Activity Monitor" "cfprefsd" "Dock" "Finder" "SystemUIServer"; do
	killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."

