import SwiftUI

struct Colors: View {
    @Binding var title: LocalizedStringKey
    @State private var mode = 0
    
    var body: some View {
        List {
            Text("About.dynamic.colors")
                .font(.footnote)
                .foregroundColor(.secondary)
            Section(header: Mode(mode: $mode)) {
                    ForEach(mode == 0 ? Shade.swiftui : Shade.uikit) { shade in
                        NavigationLink(destination: Tint(shade: shade, shades: self.mode == 0 ? Shade.swiftui : Shade.uikit)) {
                            ColorCell(shade: shade, active: false)
                        }
                    }
                }
        }.listStyle(GroupedListStyle())
            .onAppear {
                self.title = "Dynamic.colors"
        }
    }
}
