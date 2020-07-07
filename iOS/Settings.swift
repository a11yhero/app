import SwiftUI
import UIKit

struct Settings: View {
    @State private var mode = 1
    
    var body: some View {
        let changing = Binding<Int>(
            get: {
                self.mode
            }, set: {
                self.mode = $0
                
                UIApplication.shared.windows.forEach { window in
                    switch self.mode {
                    case 0: window.overrideUserInterfaceStyle = .dark
                    case 2: window.overrideUserInterfaceStyle = .light
                    default: window.overrideUserInterfaceStyle = .unspecified
                    }
                }
            })
        return NavigationView {
            List {
                Section(header:
                    Text("Display")
                        .font(.headline)
                        .padding(.vertical)) {
                    Picker("Display", selection: changing, content: {
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
