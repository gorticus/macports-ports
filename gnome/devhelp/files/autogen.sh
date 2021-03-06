#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

(test -f $srcdir/src/dh-main.c) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level Devhelp directory."
    exit 1
}

which gnome-autogen.sh || {
    echo "You need to install gnome-common."
    exit 1
}

# git submodule update --init --recursive

. gnome-autogen.sh
