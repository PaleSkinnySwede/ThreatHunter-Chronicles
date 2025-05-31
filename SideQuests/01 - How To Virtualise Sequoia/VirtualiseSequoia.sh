hdiutil create -o /tmp/sequoia -size 20480m -volname Sequoia -layout SPUD -fs HFS+J
hdiutil attach /tmp/Sequoia.dmg -mountpoint /Volumes/Sequoia
sudo /Applications/Install\ macOS\ Sequoia.app/Contents/Resources/createinstallmedia --volume /Volumes/Sequoia
hdiutil detach /Volumes/Install\ macOS\ Sequoia
hdiutil convert /tmp/Sequoia.dmg -format UDTO -o /tmp/Sequoia.iso
mv /tmp/Sequoia.iso.cdr /tmp/Sequoia.iso
echo "Done!"