import Algorithms
import Extensions

func isOpposites(_ a: Character, _ b: Character) -> Bool {
  guard a.uppercased() == b.uppercased() else { return false }
  return (a.isLowercase && b.isUppercase) || (b.isLowercase && a.isUppercase)
}

func singleReduce(_ source: [Character]) -> [Character] {
  source.chunks(ofCount: 2).reduce(into: []) { result, chunk in
    if chunk.count != 2 || !isOpposites(chunk.first!, chunk.last!) {
      result.append(contentsOf: chunk)
    }
  }
}

func doubleReduce(_ source: [Character]) -> [Character] {
  var reduced = singleReduce(source)
  var result = [reduced.removeFirst()]
  result.append(contentsOf: singleReduce(reduced))
  return result
}

func reducedLength(_ source: [Character]) -> Int {
  var result = source
  var lastSize: Int
  repeat {
    lastSize = result.count
    result = doubleReduce(result)
  } while result.count != lastSize
  return result.count
}

public func partOne() {
  print(reducedLength(Array(input))) // 9390
}

public func partTwo() {
  var bestLength = input.count
  for letter in Character.asciiLowercase {
    print("processing \(letter)")
    var modified = Array(input)
    modified.removeAll { $0 == letter || $0 == letter.asciiUppercased }
    bestLength = min(bestLength, reducedLength(modified))
  }
  print(bestLength) // 5898
}
