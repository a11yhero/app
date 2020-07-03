import SwiftUI

struct Types: View {
    @State private var mode = 0
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Picker("", selection: $mode, content: {
                        Text(verbatim: "SwiftUI")
                            .tag(0)
                        Text(verbatim: "UIKit")
                            .tag(1)
                    }).pickerStyle(SegmentedPickerStyle())
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
