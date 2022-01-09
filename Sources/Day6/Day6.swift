import Algorithms
import Extensions

extension Position {
  init(_ source: Substring) {
    let parts = source.split(separator: ",")
    self.init(Int(parts[1])!, Int(parts[0])!)
  }
}

let positions = input.map(Position.init)

func distanceSum(to position: Position) -> Int {
  positions.map { position.distance(to: $0) }.reduce(0, +)
}

func nearest(to position: Position) -> Int? {
  let distances = positions.map { $0.distance(to: position) }.enumerated()

  let smallestDistances = distances.min(count: 2, sortedBy: sorter(for: \.element))

  guard smallestDistances[0].element != smallestDistances[1].element else { return nil }
  return smallestDistances[0].offset
}

func findBorderValues(in grid: [[Int]]) -> Set<Int> {
  var result = Set<Int>()

  for row in 0..<grid.numberOfRows {
    result.insert(grid[Position(row, 0)])
    result.insert(grid[Position(row, grid.numberOfColumns - 1)])
  }

  for col in 0..<grid.numberOfColumns {
    result.insert(grid[Position(0, col)])
    result.insert(grid[Position(grid.numberOfRows - 1, col)])
  }

  return result
}

public func partOne() {
  let rowMax = positions.map(\.row).max()!
  let colMax = positions.map(\.col).max()!

  let row = Array(repeating: -1, count: colMax + 1)
  var grid = Array(repeating: row, count: rowMax + 1)

  for pos in grid.allPositions {
    if let nearestIdx = nearest(to: pos) {
      grid[pos] = nearestIdx
    }
  }

  let borderValues = findBorderValues(in: grid)

  let largest = grid.joined().occurrenceCounts().filter { $0.element.notIn(borderValues) }.max(by: sorter(for: \.count))!

  print(largest.count) // 2917
}

public func partTwo() {
  let rowMax = positions.map(\.row).max()!
  let colMax = positions.map(\.col).max()!

  let row = Array(repeating: -1, count: colMax + 1)
  var grid = Array(repeating: row, count: rowMax + 1)

  for pos in grid.allPositions {
    grid[pos] = distanceSum(to: pos)
  }

  print(grid.joined().count { $0 < 10_000 })
}
