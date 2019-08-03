import Foundation

public struct JournalEntry: Codable {
  public init(emoji: String, date: Date) {
    self.id = UUID().uuidString
    self.emoji = emoji
    self.date = date
  }
  
  public init(emoji: String) {
    self.id = UUID().uuidString
    self.emoji = emoji
    self.date = Date()
  }
  
  public var id: String?
  public var emoji: String
  public var date: Date
}
