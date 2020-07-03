import SwiftUI
import UIKit

struct Shade: Identifiable {
    static let swiftui = [
        Shade("Blue", color: .blue),
        .init("Pink", color: .pink)]
    
    static let uikit = [
        Shade("System Blue", color: .init(.systemBlue)),
        .init("System Pink", color: .init(.systemPink)),
        .init("System Red", color: .init(.systemRed)),
        .init("System Teal", color: .init(.systemTeal)),
        .init("System Green", color: .init(.systemGreen)),
        .init("System Indigo", color: .init(.systemIndigo)),
        .init("System Orange", color: .init(.systemOrange)),
        .init("System Purple", color: .init(.systemPurple)),
        .init("System Yellow", color: .init(.systemYellow)),
        .init("Label", color: .init(.label)),
        .init("Secondary Label", color: .init(.secondaryLabel)),
        .init("Tertiary Label", color: .init(.tertiaryLabel)),
        .init("Quaternary Label", color: .init(.quaternaryLabel)),
        .init("Dark Text", color: .init(.darkText)),
        .init("Light Text", color: .init(.lightText)),
        .init("Placeholder Text", color: .init(.placeholderText)),
        .init("Separator", color: .init(.separator)),
        .init("Opaque Separator", color: .init(.opaqueSeparator)),
        .init("Link", color: .init(.link)),
        .init("System Background", color: .init(.systemBackground)),
        .init("Secondary System Background", color: .init(.secondarySystemBackground)),
        .init("Tertiary System Background", color: .init(.tertiarySystemBackground)),
        .init("System Grouped Background", color: .init(.systemGroupedBackground)),
        .init("Secondary System Grouped Background", color: .init(.secondarySystemGroupedBackground)),
        .init("Tertiary System Grouped Background", color: .init(.tertiarySystemGroupedBackground)),
        .init("System Fill", color: .init(.systemFill)),
        .init("Secondary System Fill", color: .init(.secondarySystemFill)),
        .init("Tertiary System Fill", color: .init(.tertiarySystemFill)),
        .init("Quaternary System Fill", color: .init(.quaternarySystemFill)),
        .init("System Gray", color: .init(.systemGray)),
        .init("System Gray 2", color: .init(.systemGray2)),
        .init("System Gray 3", color: .init(.systemGray3)),
        .init("System Gray 4", color: .init(.systemGray4)),
        .init("System Gray 5", color: .init(.systemGray5)),
        .init("System Gray 6", color: .init(.systemGray6))]
    
    static let clear = Shade("Clear", color: .clear)
    
    let name: String
    let color: Color
    let id = UUID()
    
    private init(_ name: String, color: Color) {
        self.name = name
        self.color = color
    }
}
