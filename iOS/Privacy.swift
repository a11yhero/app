import SwiftUI

struct Privacy: View {
    var body: some View {
        ScrollView {
            Text("We.dont")
                .fixedSize(horizontal: false, vertical: false)
                .foregroundColor(.secondary)
                .padding()
        }.navigationBarTitle("Privacy", displayMode: .inline)
    }
}
