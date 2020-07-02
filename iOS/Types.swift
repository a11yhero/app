import SwiftUI

struct Types: View {
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text(verbatim: "SwiftUI")
                        .font(.headline)
                        .padding(.vertical)) {
                    ForEach(Face.all) { face in
                        NavigationLink(destination: Type(face: face)) {
                            Text(face.name)
                                .font(face.font)
                                .padding(.vertical)
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Dynamic.type", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
