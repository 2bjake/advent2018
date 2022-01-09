import Extensions

struct Claim {
  var id: Int
  var row: Int
  var col: Int
  var width: Int
  var height: Int
}

extension Claim {
  init(_ source: Substring) {
    let parts = source.split(separator: " ")
    id = Int(parts[0])!
    col = Int(parts[1])!
    row = Int(parts[2])!
    width = Int(parts[3])!
    height = Int(parts[4])!
  }

  var allPositions: [Position] {
    var result = [Position]()
    for r in row..<(row + height) {
      for c in col..<(col + width) {
        result.append(Position(r, c))
      }
    }
    return result
  }
}

public func partOneAndTwo() {
  let claims = input.map(Claim.init)
  let positions = claims.flatMap(\.allPositions)
  let occurenceCountsByElement = positions.occurrenceCountByElement()
  print(occurenceCountsByElement.values.count { $0 > 1 }) // 115304

  let bestClaim = claims.first { $0.allPositions.allSatisfy { occurenceCountsByElement[$0] == 1 }}
  print(bestClaim!.id) // 275
}
