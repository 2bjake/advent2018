import Extensions

private enum State {
  case working(Node, Int)
  case done(Node)
  case idle
}

extension State {
  static func startWorking(on node: Node) -> State {
    let timeRemaining = 61 + Int(node.value.asciiValue! - UInt8(ascii: "A"))
    return .working(node, timeRemaining)
  }

  func work() -> State {
    switch self {
      case .working(let node, 1):
        return .done(node)
      case .working(let node, let timeRemaining):
        return .working(node, timeRemaining - 1)
      case .done:
        fatalError()
      case .idle:
        return .idle
    }
  }
}

struct Worker {
  private var state = State.idle

  mutating func work(nodes: inout [Character: Node], result: inout [Character]) {
    state = state.work()

    if case .done(let node) = state {
      result.append(node.value)
      for childChar in node.children {
        let childNode = nodes[childChar]!
        childNode.parents.remove(node.value)
      }
      state = .idle
    }

    if case .idle = state {
      if let todoNode = nextWork(in: nodes) {
        state = .startWorking(on: todoNode)
        nodes[todoNode.value] = nil
      }
    }
  }
}
