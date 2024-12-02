#!/bin/bash

day_number=$(printf "%02d" $1)
mkdir -p Sources/Day$day_number
echo "public struct Day$day_number {
    func solve() -> String {
        // Solution here
        return \"\"
    }
}" > Sources/Day$day_number/Day$day_number.swift
