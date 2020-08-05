import SwiftUI

struct Home: View {
    @Binding var title: LocalizedStringKey
    
    var body: some View {
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
            .onAppear {
                self.title = "Home"
        }
    }
}
