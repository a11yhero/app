import SwiftUI

struct Face: Identifiable {
    static let all = [
        Face("Large Title", font: Font.largeTitle),
        .init("Title", font: Font.title),
        .init("Headline", font: Font.headline),
        .init("Subheadline", font: Font.subheadline),
        .init("Body", font: Font.body),
        .init("Callout", font: Font.callout),
        .init("Footnote", font: Font.footnote),
        .init("Caption", font: Font.caption)]
    
    let name: String
    let font: Font
    let id = UUID()
    
    private init(_ name: String, font: Font) {
        self.name = name
        self.font = font
    }
}
