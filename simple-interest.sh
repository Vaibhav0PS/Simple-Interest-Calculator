#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "-----------------------------------"
echo "Principal:        $principal"
echo "Rate of interest: $rate %"
echo "Time period:      $time years"
echo "Simple interest:  $simple_interest"
echo "Total amount:     $total_amount"
