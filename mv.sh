#!/bin/bash

# Read the number of elements (N)
echo "Enter the number of elements:"
read N

# Initialize sum to 0
sum=0

# Read N numbers from the user and calculate the sum
echo "Enter the numbers:"
for (( i=1; i<=N; i++ ))
do
    read num
    sum=$((sum + num))
done

# Calculate the average
average=$(echo "scale=2; $sum / $N" | bc)

# Output the average
echo "The average of the $N numbers is: $average
