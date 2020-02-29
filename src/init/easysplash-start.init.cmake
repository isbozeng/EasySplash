#!/bin/sh
# EasySplash - tool for animated splash screens
# Copyright (C) 2015  O.S. Systems Software LTDA.
#
# This file is part of EasySplash.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT

### BEGIN INIT INFO
# Provides:             easysplash
# Required-Start:
# Required-Stop:
# Default-Start:        S
# Default-Stop:
### END INIT INFO

# Read configuration variable file if it is present
[ -r @CMAKE_INSTALL_SYSCONFDIR@/default/easysplash ] && . @CMAKE_INSTALL_SYSCONFDIR@/default/easysplash

read CMDLINE < /proc/cmdline
for x in $CMDLINE; do
	case $x in
		easysplash=false)
		echo "Boot splashscreen disabled"
		exit 0
		;;
	esac
done

@CMAKE_INSTALL_SBINDIR@/easysplash &
