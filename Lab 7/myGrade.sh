#! /bin/bash

#name:Byron Jones
#student#:040585687
#course:CST8102
#Section 302, Lab 7, November 9th, 2021

clear

RED=$'\033[0;31m'
NC=$'\033[0m' # No Color

echo -n "Enter Assignment mark (0 - 40): $RED"
read assignmentMark
echo "$NC"

echo -n "Enter Test 1 mark (0 - 15): $RED"
read testMark1
echo "$NC"

echo -n "Enter Test 2 mark (0 - 15): $RED"
read testMark2
echo "$NC"

echo -n "Enter Final exam mark (0-30): $RED"
read examMark
echo "$NC"

finalMark=$((assignmentMark+testMark1+testMark2+examMark))

if [ $finalMark -ge 90 ]; then
	finalGrade="A+"
elif [ $finalMark -ge 85 ]; then
	finalGrade="A"
elif [ $finalMark -ge 80 ]; then
	finalGrade="A-"
elif [ $finalMark -ge 77 ]; then
	finalGrade="B+"
elif [ $finalMark -ge 73 ]; then
	finalGrade="B"
elif [ $finalMark -ge 70 ]; then
	finalGrade="B-"
elif [ $finalMark -ge 67 ]; then
	finalGrade="C+"
elif [ $finalMark -ge 63 ]; then
	finalGrade="C"
elif [ $finalMark -ge 60 ]; then
	finalGrade="C-"
elif [ $finalMark -ge 57 ]; then
	finalGrade="D+"
elif [ $finalMark -ge 53 ]; then
	finalGrade="D"
elif [ $finalMark -ge 50 ]; then
	finalGrade="D-"
elif [ $finalMark -le 49 ]; then
	finalGrade="F"
fi

echo "Your final numeric grade is $finalMark, and your final letter grade is $finalGrade"
