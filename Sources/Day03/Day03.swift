public struct Day03 {
    func processInput(example: Bool = false) -> [String] {
        let input = example ? Day03.exmapleInput : Day03.input
        let lines = input.components(separatedBy: "\n")
        return lines

    }
    func solve(example: Bool = false) -> String {
        let input = processInput(example: example)
        return ""
    }
}
