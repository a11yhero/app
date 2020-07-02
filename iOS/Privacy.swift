import SwiftUI

struct Privacy: View {
    var body: some View {
        ScrollView {
            Text(.init("We.dont"))
                .fixedSize(horizontal: false, vertical: false)
                .foregroundColor(.secondary)
                .padding()
        }.navigationBarTitle(.init("Privacy"), displayMode: .inline)
    }
}
