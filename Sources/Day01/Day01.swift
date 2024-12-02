import Foundation

public struct Day01: Day {
    private func processInput(example: Bool = false) -> ([Int], [Int]) {
        let input = example ? Day01.exmapleInput : Day01.input

        var first = [Int]()
        var second = [Int]()

        for line in input.components(separatedBy: "\n") {
            let numbers = line.components(separatedBy: "   ")
            first.append(Int(numbers[0])!)
            second.append(Int(numbers[1])!)
        }

        first.sort()
        second.sort()

        return (first, second)
    }

    func solve(example: Bool = false) -> String {
        let (first, second) = processInput(example: example)

        var diff = 0
        var similarity: [Int: Int] = [:]

        for idx in 0..<first.count {
            diff += abs(first[idx] - second[idx])

            let occurance = second.count {
                $0 == first[idx]
            }

            similarity[first[idx], default: 0] += first[idx] * occurance
        }

        let sum = similarity.values.reduce(0, +)

        return "\(diff),\(sum)"
    }
}
