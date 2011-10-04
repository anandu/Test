#!/bin/bash
if ( `expr  "$*" -lt "2"` ); then
   echo "usage ./arg.sh arg1 arg2"
   exit 1
fi
echo $1
echo $2
echo $*
echo $#
