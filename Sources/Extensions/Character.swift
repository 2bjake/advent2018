import Foundation

extension Character {
  public static var asciiLowercase: [Character] {
    let range = UInt8(ascii: "a")...UInt8(ascii: "z")
    return range.map { Character(UnicodeScalar($0)) }
  }

  public var asciiUppercased: Character? {
    let uppercased = self.uppercased()
    guard uppercased.count == 1 else { return nil }
    return uppercased.first!
  }
}
