#!/bin/bash/ -x
declare -A computation
echo "enter value of a"
read a
echo "enter the value of b"
read b
echo "enter the value of c"
read c

compute1=$(( $a + $b * $c ))
compute2=$(( $a * $b + $c ))
compute3=$(( $c + $a / $b ))
compute4=$(( $a % $b + $c ))


echo $compute1
echo $compute2
echo $compute3
echo $compute4


computation[q1]=$compute1
computation[q2]=$compute2
computation[q3]=$compute3
computation[q4]=$compute4

echo "Dictionary into arrays"
echo ${computation[@]}


echo "sorting into Descending order"
array=($(printf '%d\n' "${computation[@]}" | sort -nr ))
echo ${array[@]}


echo "sorting into Ascending order"
arr=($(printf '%d\n' "${computation[@]}" | sort -n ))
echo ${arr[@]}
