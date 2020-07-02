import SwiftUI

struct Home: View {
    @Binding var tab: Int
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack {
                    Spacer()
                    Image("logo")
                        .padding()
                    Spacer()
                }) {
                    VStack {
                        Text("Title")
                            .font(.headline)
                            .fixedSize(horizontal: true, vertical: false)
                            .padding()
                        Text("Description")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: false)
                            .padding(.vertical)
                    }
                }
                Section(footer:
                    Text("About.dynamic.type")
                        .font(.footnote)
                        .foregroundColor(.secondary)) {
                    Button(action: {
                        self.tab = 1
                    }) {
                        Text("Dynamic.type")
                    }.foregroundColor(.primary)
                }
                Section(footer:
                    Text("About.dynamic.colors")
                        .font(.footnote)
                        .foregroundColor(.secondary)) {
                    Button(action: {
                        self.tab = 2
                    }) {
                        Text("Dynamic.colors")
                    }.foregroundColor(.primary)
                }
                Section(footer:
                    Text("About.accessibility.features")
                        .font(.footnote)
                        .foregroundColor(.secondary)) {
                    Button(action: {
                        self.tab = 3
                    }) {
                        Text("Accessibility.features")
                    }.foregroundColor(.primary)
                }
                Section {
                    NavigationLink(destination: Privacy()) {
                        Text("Privacy")
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Home", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
