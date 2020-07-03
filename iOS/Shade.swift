import SwiftUI
import UIKit

struct Shade: Identifiable {
    static let swiftui = [
        Shade("Blue", color: .blue),
        .init("Pink", color: .pink)]
    
    static let uikit = [
        Shade("System Blue", color: .init(.systemBlue)),
        .init("System Pink", color: .init(.systemPink))]
    
    static let clear = Shade("Clear", color: .clear)
    
    let name: String
    let color: Color
    let id = UUID()
    
    private init(_ name: String, color: Color) {
        self.name = name
        self.color = color
    }
}
