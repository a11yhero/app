import SwiftUI

struct Types: View {
    @State private var mode = 0
    
    var body: some View {
        NavigationView {
            List {
                Text("About.dynamic.type")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Section(header: Mode(mode: $mode)) {
                        ForEach(mode == 0 ? Face.swiftui : Face.uikit) { face in
                            NavigationLink(destination: Type(face: face, faces: self.mode == 0 ? Face.swiftui : Face.uikit)) {
                                FontCell(face: face, active: false)
                            }
                        }
                    }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Dynamic.type", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
