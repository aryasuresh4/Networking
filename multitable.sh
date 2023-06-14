#!/bin/bash

echo "Enter a number:"
read number

echo "Multiplication table for $number:"
for ((i = 1; i <= 10; i++)); do
    result=$((number * i))
    echo "$number x $i = $result"
done

///
Enter a number:
4
Multiplication table for 4:
4 x 1 = 4
4 x 2 = 8
4 x 3 = 12
4 x 4 = 16
4 x 5 = 20
4 x 6 = 24
4 x 7 = 28
4 x 8 = 32
4 x 9 = 36
4 x 10 = 40

