#!/bin/bash

# Check that exactly 3 arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <Principal> <Rate> <Time>"
    exit 1
fi

P=$1
R=$2
T=$3

# Calculate simple interest using bc for decimal precision
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

# Display the result
echo "Simple Interest = $SI"

