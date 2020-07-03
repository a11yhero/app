import SwiftUI
import UIKit

struct Face: Identifiable {
    static let swiftui = [
        Face("Large Title", font: .largeTitle),
        .init("Title", font: .title),
        .init("Headline", font: .headline),
        .init("Subheadline", font: .subheadline),
        .init("Body", font: .body),
        .init("Callout", font: .callout),
        .init("Footnote", font: .footnote),
        .init("Caption", font: .caption)]
    
    static let uikit = [
        Face("Large Title", font: .preferredFont(forTextStyle: .largeTitle)),
        .init("Title 1", font: .preferredFont(forTextStyle: .title1)),
        .init("Title 2", font: .preferredFont(forTextStyle: .title2)),
        .init("Title 3", font: .preferredFont(forTextStyle: .title3)),
        .init("Headline", font: .preferredFont(forTextStyle: .headline)),
        .init("Subheadline", font: .preferredFont(forTextStyle: .subheadline)),
        .init("Body", font: .preferredFont(forTextStyle: .body)),
        .init("Callout", font: .preferredFont(forTextStyle: .callout)),
        .init("Footnote", font: .preferredFont(forTextStyle: .footnote)),
        .init("Caption 1", font: .preferredFont(forTextStyle: .caption1)),
        .init("Caption 2", font: .preferredFont(forTextStyle: .caption2))]
    
    let name: String
    let font: Font
    let id = UUID()
    
    private init(_ name: String, font: Font) {
        self.name = name
        self.font = font
    }
    
    private init(_ name: String, font: UIFont) {
        self.name = name
        self.font = .init(font as CTFont)
    }
}
