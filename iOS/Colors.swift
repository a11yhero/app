import SwiftUI

struct Colors: View {
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
                        ForEach(mode == 0 ? Shade.swiftui : Shade.uikit) { shade in
                            NavigationLink(destination: Tint(shade: shade, shades: self.mode == 0 ? Shade.swiftui : Shade.uikit)) {
                                HStack {
                                    Rectangle()
                                        .cornerRadius(8)
                                        .foregroundColor(shade.color)
                                        .frame(width: 50, height: 50)
                                    Text(shade.name)
                                        .padding(.vertical)
                                    Spacer()
                                }
                            }
                        }
                    }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Dynamic.colors", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
