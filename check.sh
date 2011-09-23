#!/bin/bash
# Setting the vairables
var0=unset
var1=unset
var2=0
echo "enter value to reach"
read var0
echo "Input variable #1 (end to exit) "
read var1
while
     [ "$var1" != "$var0" ] # Keeps track of what $var1 was previously.
      # Four conditions on "while", but only last one controls loop.
      # The *last* exit status is the one that counts.
do
 var2=`expr $var2 + 1`
 var1=`expr $var1 + $var2`
 echo "variable #1 increasing to $var1"
if [ "$var1" != "$var0" ]
then
 var2=`expr $var2 + 1`
 var1=`expr $var1 - $var2`
fi
  echo "variable #1 decreasing to $var1"
done
echo
echo "Reached at specified value $var1"
