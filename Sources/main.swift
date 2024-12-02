// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public func runSolution(for day: Int) {
    switch day {
    case 1:
        print(Day01().solve())
        break
    default:
        print("Solution for day \(day) not implemented.")
    }
}

if let day = Int(CommandLine.arguments.last ?? "") {
    runSolution(for: day)
} else {
    print("Please provide a day number.")
}
