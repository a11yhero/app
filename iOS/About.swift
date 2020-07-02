import SwiftUI

struct About: View {
    var body: some View {
        ScrollView {
            Circle()
            Text(.init("Accessibility.hero"))
                .font(.headline)
                .padding()
        }
    }
}
