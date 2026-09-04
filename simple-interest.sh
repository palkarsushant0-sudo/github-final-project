#!/bin/bash
# simple-interest.sh
# A simple calculator to compute Simple Interest based on user input.
# Simple Interest formula: SI = (Principal * Rate * Time) / 100

echo "===== Simple Interest Calculator ====="

echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest (in %):"
read rate

echo "Enter Time Period (in years):"
read time

# Calculate simple interest using bc for floating point math
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "Simple Interest   : $simple_interest"
echo "---------------------------------------"
