import Algorithms
import Extensions

class Node {
  var children: [Node] = []
  var metadata: [Int] = []

  var metadataSum: Int {
    metadata.reduce(0, +) + children.map(\.metadataSum).reduce(0, +)
  }

  var value: Int {
    guard children.notEmpty else { return metadata.reduce(0, +) }

    return metadata.reduce(0) { result, metadatum in
      result + (children.element(at: metadatum - 1)?.value ?? 0)
    }
  }
}

func buildNode(from values: inout [Int]) -> Node {
  let childCount = values.removeLast()
  let metadataCount = values.removeLast()

  let node = Node()
  for _ in 0..<childCount {
    node.children.append(buildNode(from: &values))
  }

  for _ in 0..<metadataCount {
    node.metadata.append(values.removeLast())
  }
  return node
}

public func partOne() {
  var values: [Int] = input.split(separator: " ").compactMap(Int.init).reversed()
  let node = buildNode(from: &values)
  assert(values.isEmpty)
  print(node.metadataSum)
}

public func partTwo() {
  var values: [Int] = input.split(separator: " ").compactMap(Int.init).reversed()
  let node = buildNode(from: &values)
  assert(values.isEmpty)
  print(node.value)
}
