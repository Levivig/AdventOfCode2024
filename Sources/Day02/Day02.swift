public struct Day02 {
    func processInput(example: Bool = false) -> [[Int]] {
        let input = example ? Day02.exmapleInput : Day02.input

        var levels: [[Int]] = []
        for line in input.components(separatedBy: "\n") {
            let numbers = line
                .components(separatedBy: " ")
                .compactMap { Int($0) }

            levels.append(numbers)
        }

        return levels
    }

    func solve(example: Bool = false) -> String {
        let input = processInput(example: example)

        var safe = 0
        var safeWithTolerance = 0
        for levels in input {
            safe += isSafe(levels: levels) ? 1 : 0
            safeWithTolerance += isSafeWithTolerance(levels) ? 1 : 0
        }

        return "\(safe) \(safeWithTolerance)"
    }

    private func isSafeWithTolerance(_ levels: [Int]) -> Bool {
        for idx in 0..<levels.count {
            var newLevels = levels
            newLevels.remove(at: idx)

            if isSafe(levels: Array(newLevels)) {
                return true
            }
        }
        return false
    }

    private func isSafe(levels: [Int]) -> Bool {
        guard levels.isDescending() || levels.isAscending() else {
            return false
        }

        var allSatisfy = true
        for idx in 0..<levels.count - 1 {
            let diff = abs(levels[idx] - levels[idx + 1])
            if diff < 1 || diff > 3 {
                allSatisfy = false
                break
            }
        }
        return allSatisfy
    }
}

extension Array where Element: Comparable {
    func isAscending() -> Bool {
        return zip(self, self.dropFirst()).allSatisfy(<=)
    }

    func isDescending() -> Bool {
        return zip(self, self.dropFirst()).allSatisfy(>=)
    }
}
