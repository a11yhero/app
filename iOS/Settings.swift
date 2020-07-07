import SwiftUI

struct Settings: View {
    @State private var mode = 1
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("Display")
                        .font(.headline)
                        .padding(.vertical)) {
                    Picker("Display", selection: $mode, content: {
                        Text(verbatim: "Dark")
                            .tag(0)
                        Text(verbatim: "Default")
                            .tag(1)
                        Text(verbatim: "Light")
                            .tag(2)
                    }).pickerStyle(SegmentedPickerStyle())
                        .padding(.vertical)
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Settings", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
