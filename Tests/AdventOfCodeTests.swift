//
//  AdventOfCodeTests.swift
//  AdventOfCode2024
//
//  Created by Levente Vig on 12.11.24.
//

@testable import AdventOfCode2024
import XCTest

class AdventOfCodeTests: XCTestCase {
    func testDay1Example() {
        let day = Day01()
        let result = day.solve(example: true)
        XCTAssertEqual(result, "11,31")
    }

    func testDay1Real() {
        let day = Day01()
        let result = day.solve(example: false)
        XCTAssertEqual(result, "1603498,25574739")
    }
}
