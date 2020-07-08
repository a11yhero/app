import SwiftUI

struct Home: View {
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
