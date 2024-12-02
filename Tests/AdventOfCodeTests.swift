//
//  AdventOfCodeTests.swift
//  AdventOfCode2024
//
//  Created by Levente Vig on 12.11.24.
//

@testable import AdventOfCode2024
import XCTest

class AdventOfCodeTests: XCTestCase {

    class Day01Tests: XCTestCase {
        let day = Day01()

        func testDay1Example() {
            let result = day.solve(example: true)
            XCTAssertEqual(result, "11 31")
        }

        func testDay1Real() {
            let result = day.solve(example: false)
            XCTAssertEqual(result, "1603498 25574739")
        }
    }

    class Day02Tests: XCTestCase {
        let day = Day02()

        func testDay2Example() {
            let result = day.solve(example: true)
            XCTAssertEqual(result, "2 4")
        }

        func testDay2Real() {
            let result = day.solve(example: false)
            XCTAssertEqual(result, "230 301")
        }
    }
}
