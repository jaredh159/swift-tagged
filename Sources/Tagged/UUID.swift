import Foundation

extension Tagged where RawValue == UUID {
  /// Creates a tagged UUID from a string representation.
  ///
  /// - Parameter string: The string representation of a UUID, such as
  ///   `DEADBEEF-DEAD-BEED-DEAD-BEEFDEADBEEF`.
  public init?(uuidString string: String) {
    guard let uuid = UUID(uuidString: string)
    else { return nil }
    self.init(uuid)
  }
}
