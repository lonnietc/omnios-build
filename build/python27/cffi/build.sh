#!/usr/bin/bash
#
# {{{ CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License, Version 1.0 only
# (the "License").  You may not use this file except in compliance
# with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END }}}
#
# Copyright 2017 OmniTI Computer Consulting, Inc.  All rights reserved.
# Copyright 2018 OmniOS Community Edition (OmniOSce) Association.
# Use is subject to license terms.
#
# Load support functions
. ../../../lib/functions.sh

PKG=library/python-2/cffi-27
PROG=cffi
VER=1.11.3
SUMMARY="cffi - Foreign Function Interface for Python calling C code"
DESC="$SUMMARY"

. $SRCDIR/../common.sh

init
download_source $PROG $PROG $VER
patch_source
prep_build
python_build
strip_install -x
make_package local.mog ../final.mog
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
