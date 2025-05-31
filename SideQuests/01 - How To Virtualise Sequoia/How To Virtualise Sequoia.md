# How To Virtualise Sequoia

## Create a Volume

The volume will be 20 GB (20480 MB) in our example below because Sequoia is larger than 16 GB.

`hdiutil create -o /tmp/sequoia -size 20480m -volname Sequoia -layout SPUD -fs HFS+J`


## Mount the Volume

`hdiutil attach /tmp/Sequoia.dmg -mountpoint /Volumes/Sequoia`


## Create the Install Media

`sudo /Applications/Install\ macOS\ Sequoia.app/Contents/Resources/createinstallmedia --volume /Volumes/Sequoia`


## Unmount the Volume

`hdiutil detach /Volumes/Install\ macOS\ Sequoia`


## Convert the DMG file to CDR

...and save it on the Desktop, because that's were all sane people download stuff to.

`hdiutil convert /tmp/Sequoia.dmg -format UDTO -o ~/Desktop/Sequoia.cdr`


## Rename the CDR file to ISO

...because Apple really loves to add .cdr to the end of files converted with hdiutil.

`mv ~/Desktop/Sequoia.cdr ~/Desktop/Sequoia.iso`
