import Algorithms
import Extensions

public func partOne() {
  let counts = input.map { $0.occurrenceCounts() }
  let twiceCount = counts.count { $0.contains { $0.count == 2 } }
  let thriceCount = counts.count { $0.contains { $0.count == 3 } }
  print(twiceCount * thriceCount) // 3952

}

func doThing(by i: Int) -> [String: [String]] {
  input.reduce(into: [:]) { result, substr in
    var key = Array(substr)
    key.remove(at: i)
    result[String(key), default: []].append(String(substr))
  }
}

public func partTwo() {
  for i in 0..<input[0].count {
    let dict = doThing(by: i)
    if let match = dict.first(where: { $0.value.count == 2 }) {
      let first = match.value[0]
      let second = match.value[1]

      let prefix = first.matchingPrefix(of: second)
      let suffix = first.dropFirst(prefix.count + 1)
      print("\(prefix)\(suffix)")
      assert("vtnikorkulbfejvyznqgdxpaw" == "\(prefix)\(suffix)")
      break
    }
  }
}
