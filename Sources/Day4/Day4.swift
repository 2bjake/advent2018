import Algorithms
import Extensions
import Foundation

enum Event {
  case wakesUp
  case fallsAsleep
  case guardStarts(Int)
}

struct TimeEvent {
  var date: Date
  var minute: Int
  var event: Event
}

extension TimeEvent {
  init(_ source: Substring) {
    // 1518-06-16T00:09:00Z=wakes up
    let parts = source.split(separator: "=")
    date = try! Date(parts[0], strategy: .iso8601)

    let timeParts = parts[0].split(separator: ":")
    minute = Int(timeParts[1])!

    let eventStr = parts[1].split(separator: " ").first!
    switch eventStr {
      case "wakes": event = .wakesUp
      case "falls": event = .fallsAsleep
      default: event = .guardStarts(Int(eventStr)!)
    }
  }
}

func buildRangeMap(_ source: [Substring]) -> [Int: [Range<Int>]] {
  let timeEvents = source.map(TimeEvent.init).sorted(by: sorter(for: \.date))

  var sleepRangesByGuard = [Int: [Range<Int>]]()

  var currentGuard = 0
  var fallAsleepMinute = 0
  for timeEvent in timeEvents {
    switch timeEvent.event {
      case .wakesUp:
        sleepRangesByGuard[currentGuard, default: []].append(fallAsleepMinute..<timeEvent.minute)
      case .fallsAsleep:
        fallAsleepMinute = timeEvent.minute
      case .guardStarts(let id):
        currentGuard = id
    }
  }

  return sleepRangesByGuard
}

func buildCountByMinute(_ ranges: [Range<Int>]) -> [Int: Int] {
  ranges.reduce(into: [:]) { result, range in
    for i in range {
      result[i, default: 0] += 1
    }
  }
}

public func partOne() {
  let sleepRangesByGuard = buildRangeMap(input)
  let sleepCountByGuard = sleepRangesByGuard.mapValues { $0.reduce(0) { result, range in result + range.count} }
  let sleepyGuardId = sleepCountByGuard.max(by: sorter(for: \.value))!.key
  let countByMinute = buildCountByMinute(sleepRangesByGuard[sleepyGuardId]!)
  let maxMinute = countByMinute.max(by: sorter(for: \.value))!.key
  print(maxMinute * sleepyGuardId) // 94040
}

public func partTwo() {
  let sleepRangesByGuard = buildRangeMap(input)
  let sleepCountsByGuard = sleepRangesByGuard.mapValues(buildCountByMinute)

  let sleepyGuardInfo = sleepCountsByGuard.mapValues {
    $0.max(by: sorter(for: \.value))!
  }.max(by: sorter(for: \.value.value))!
  let guardId = sleepyGuardInfo.key
  let minute = sleepyGuardInfo.value.key

  print(guardId * minute) // 39940

}
