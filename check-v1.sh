#!/bin/bash
# Setting the vairables
var0="$1"
var1="$2"
var2=0
# Getting the values from users
if [[ "$#" != 2 ]]; then
   echo "usage ./check-v1.sh value2reach startinput"
   exit 1
fi
countr () {
var2=`expr $var2 + 1` # Adding 1 to counter variable var2
}
# Starting the logic
while
     [ "$var1" != "$var0" ] # Checks if var1 is reached at var0 value.
do
 countr
 var1=`expr $var1 + $var2` # Adding counter to variable var1 value
 echo "variable #1 increasing to $var1"
if [ "$var1" != "$var0" ]
then
 countr
 var1=`expr $var1 - $var2`
  echo "variable #1 decreasing to $var1"
fi
done
# As one the loop exits
echo
echo "Reached at specified value $var1"
