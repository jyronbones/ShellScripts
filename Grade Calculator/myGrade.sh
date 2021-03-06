#!/bin/bash

#name:Byron Jones
#student#:040585687
#course:CST8102
#Section 302, Lab 7, November 9th, 2021

clear #clear screen

read -p "Enter Assignment mark (0 - 40): " assignment
read -p "Enter Test 1 mark (0 - 15): " test1
read -p "Enter Test 2 mark (0 - 15): " test2
read -p "Enter Final exam mark (0 - 30): " exam

grade=$((assignment+test1+test2+exam))

if [ $grade -ge 90 ] && [ $grade -le 100 ] #grade between 90 and 100
then
	letterGrade="A+"
elif [ $grade -ge 85 ] && [ $grade -le 89 ] #grade between 85 and 89
then
	letterGrade="A"
elif [ $grade -ge 80 ] && [ $grade -le 84 ] #grade between 80 and 84
then
	letterGrade="A-"
elif [ $grade -ge 77 ] && [ $grade -le 79 ] #grade between 77 and 79
then
	letterGrade="B+"
elif [ $grade -ge 73 ] && [ $grade -le 76 ] #grade between 73 and 76
then
	letterGrade="B"
elif [ $grade -ge 70 ] && [ $grade -le 72 ] #grade between 70 and 72
then
	letterGrade="B-"
elif [ $grade -ge 67 ] && [ $grade -le 69 ] #grade between 67 and 69
then
	letterGrade="C+"
elif [ $grade -ge 63 ] && [ $grade -le 66 ] #grade between 63 and 66
then
	letterGrade="C"
elif [ $grade -ge 60 ] && [ $grade -le 62 ] #grade between 60 and 62
then
	letterGrade="C-"
elif [ $grade -ge 57 ] && [ $grade -le 59 ] #grade between 57 and 59
then
	letterGrade="D+"
elif [ $grade -ge 53 ] && [ $grade -le 56 ] #grade between 53 and 56
then
	letterGrade="D"
elif [ $grade -ge 50 ] && [ $grade -le 52 ] #grade between 50 and 52
then
	letterGrade="D-"
else [ $grade -ge 0 ] && [ $grade -le 49 ] #grade between 0 and 49
	letterGrade="F"
fi #end if

echo #line separator
echo "Your final numeric grade is $grade, and your final letter grade is $letterGrade"