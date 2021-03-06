import Algorithms

extension Collection {
  // requires collection to be sorted before calling
  private func firstIfUnique<Subject: Hashable>(on projection: (Element) throws -> Subject) rethrows -> Element? {
    guard let first = self.first else { return nil }
    if let second = self.dropFirst().first, try projection(first) == projection(second) { return nil }
    return first
  }
}

extension Collection where Element: Hashable {
  // requires collection to be sorted before calling
  private func firstIfUnique() -> Element? {
    firstIfUnique { $0 }
  }

  // O(n)
  public func occurrenceCounts() -> [(element: Element, count: Int)] {
    occurrenceCountByElement().map { $0 }
  }

  public func occurrenceCountByElement() -> [Element: Int] {
    self.reduce(into: [:]) { result, value in result[value, default: 0] += 1 }
  }

  public func leastCommon() -> Element? {
    occurrenceCounts()
      .min(count: 2, sortedBy: sorter(for: \.count))
      .firstIfUnique(on: \.count)?
      .element
  }

  public func mostCommon() -> Element? {
    return occurrenceCounts()
      .max(count: 2, sortedBy: sorter(for: \.count))
      .reversed()
      .firstIfUnique(on: \.count)?
      .element
  }
}

extension Collection {
  public var only: Element? {
    guard self.count == 1 else { return nil }
    return self.first
  }
}

extension Collection {
  public var second: Element? {
    self.dropFirst().first
  }
}

extension Collection {
  public var notEmpty: Bool { !isEmpty }
}

extension Collection where Element: Comparable {
  public func isSorted() -> Bool {
    self.adjacentPairs().allSatisfy { first, second in first <= second }
  }
}

extension Collection where Element: Equatable {
  public func matchingPrefix(of other: Self) -> SubSequence {
    var selfIdx = self.startIndex
    var otherIdx = other.startIndex
    while selfIdx < self.endIndex && otherIdx < other.endIndex && self[selfIdx] == other[otherIdx] {
      selfIdx = self.index(after: selfIdx)
      otherIdx = other.index(after: otherIdx)
    }
    return self[startIndex..<selfIdx]
  }
}
