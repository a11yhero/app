import SwiftUI

struct Colors: View {
    @State private var mode = 0
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Mode(mode: $mode)) {
                        ForEach(mode == 0 ? Shade.swiftui : Shade.uikit) { shade in
                            NavigationLink(destination: Tint(shade: shade, shades: self.mode == 0 ? Shade.swiftui : Shade.uikit)) {
                                ColorCell(shade: shade, active: false)
                            }
                        }
                    }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Dynamic.colors", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
