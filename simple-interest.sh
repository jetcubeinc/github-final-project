#!/usr/bin/env bash

if [[ $# -ne 3 ]]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

principal=$1
rate=$2
time=$3

# Calculate simple interest: SI = P * R * T / 100
si=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Simple Interest: $si"
