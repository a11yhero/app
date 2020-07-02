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
                        Text(.init("Title"))
                            .font(.headline)
                            .padding()
                        Text(.init("Description"))
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: false)
                            .padding()
                    }
                }
                Section {
                    NavigationLink(destination: Privacy()) {
                        Text(.init("Privacy"))
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle(.init("Home"), displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
