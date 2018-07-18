#!/bin/bash

# DESTDIR is your target project's dir
DESTDIR=/usr/local/src/rt-n56u

ROOTDIR=`pwd`

if [ ! -d "${DESTDIR}" ] ; then
	echo "Target project doesn't exist! Terminate!!!"
	exit 1
fi

cp -fRv "${ROOTDIR}/trunk/" "${DESTDIR}/trunk/"