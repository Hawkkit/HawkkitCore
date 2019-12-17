
Debian
====================
This directory contains files used to package hawkkitd/hawkkit-qt
for Debian-based Linux systems. If you compile hawkkitd/hawkkit-qt yourself, there are some useful files here.

## hawkkit: URI support ##


hawkkit-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install hawkkit-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your hawkkit-qt binary to `/usr/bin`
and the `../../share/pixmaps/hawkkit128.png` to `/usr/share/pixmaps`

hawkkit-qt.protocol (KDE)

