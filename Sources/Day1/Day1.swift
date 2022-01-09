import Algorithms
import Extensions

public func partOne() {
  let result = input.compactMap(Int.init).reduce(0, +)
  print(result) // 538
}

public func partTwo() {
  let adjustments = input.compactMap(Int.init).cycled()
  var knownFrequencies = Set<Int>()
  var currentFrequency = 0

  for adjustment in adjustments {
    currentFrequency += adjustment
    let (inserted, _) = knownFrequencies.insert(currentFrequency)
    if !inserted {
      break
    }
  }
  print(currentFrequency) // 77271
}
