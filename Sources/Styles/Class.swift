import HTMLKit

public struct Class: RawRepresentable, ExpressibleByStringLiteral {
  public var rawValue: String

  @inlinable
  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  @inlinable
  public init(stringLiteral value: String) {
    self.rawValue = value
  }

  @inlinable
  public static func union(_ classes: Self...) -> Self {
    .init(
      rawValue: classes.map(\.rawValue).joined(separator: " ")
    )
  }
}
