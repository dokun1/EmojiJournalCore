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

#if canImport(UIKit)
import UIKit

extension UIColor {
   var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
       var red: CGFloat = 0
       var green: CGFloat = 0
       var blue: CGFloat = 0
       var alpha: CGFloat = 0
       getRed(&red, green: &green, blue: &blue, alpha: &alpha)

       return (red, green, blue, alpha)
   }
}
#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension Color {
   init(uiColor: UIColor) {
       self.init(red: Double(uiColor.rgba.red),
                 green: Double(uiColor.rgba.green),
                 blue: Double(uiColor.rgba.blue),
                 opacity: Double(uiColor.rgba.alpha))
   }
}
#endif
#endif
