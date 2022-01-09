import Algorithms
import Extensions

class Node {
  let value: Character
  var children: Set<Character> = []
  var parents: Set<Character> = []

  init(value: Character) {
    self.value = value
  }
}

func makeGraph(_ lines: [Substring], chars: [Character]) -> [Character: Node] {
  let nodes: [Character: Node] = chars.reduce(into: [:]) { result, char in
    result[char] = Node(value: char)
  }

  for line in lines {
    nodes[line.first!]!.children.insert(line.last!)
    nodes[line.last!]!.parents.insert(line.first!)
  }

  return nodes
}

func nextWork(in nodes: [Character: Node]) -> Node? {
  nodes.values.filter { $0.parents.isEmpty }.min(by: sorter(for: \.value))
}

public func partOne() {
  var nodes = makeGraph(input, chars: Character.asciiUppercase)
  var result = [Character]()

  while nodes.notEmpty {
    let node = nextWork(in: nodes)!
    result.append(node.value)
    for child in node.children {
      let childNode = nodes[child]!
      childNode.parents.remove(node.value)
    }
    nodes[node.value] = nil
  }
  print(String(result)) // BFLNGIRUSJXEHKQPVTYOCZDWMA
}



public func partTwo() {
  let chars = Character.asciiUppercase
  let workerCount = 5
  let data = input

  var nodes = makeGraph(data, chars: chars)
  var result = [Character]()
  var workers = Array(repeating: Worker(), count: workerCount)

  var second = -1
  while result.count < chars.count {
    second += 1
    for i in workers.indices {
      workers[i].work(nodes: &nodes, result: &result)
    }
  }
  print(second) // 880
}
