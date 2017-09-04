#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-office
	rm -f /usr/lib/sparky-aptus/inst/sparky-office.desktop
   	rm -f /usr/share/applications/sparky-office.desktop
	rm -f /usr/share/menu/sparky-office
	rm -rf /usr/share/sparky/sparky-office
else
	cp bin/sparky-office /usr/bin/
	if [ ! -d /usr/lib/sparky-aptus/inst ]; then
		mkdir -p /usr/lib/sparky-aptus/inst
	fi
	cp inst/* /usr/lib/sparky-aptus/inst/
	cp applications/* /usr/share/applications/
	cp menu/* /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-office ]; then
		mkdir -p /usr/share/sparky/sparky-office
	fi
	cp sparky-office/* /usr/share/sparky/sparky-office/
fi
