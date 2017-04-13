#!/bin/bash
#
TFILE="/tmp/$(basename $0).$$.tmp"
ls > $TFILE
echo "See diretory listing in $TFILE"