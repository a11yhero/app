import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            About()
                .tabItem {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Second")
                }
            Text("First View")
                .tabItem {
                    Image(systemName: "textformat.size")
                    Text("First")
                }
            Text("Second View")
                .tabItem {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Second")
                }
            Text("Second View")
            .tabItem {
                Image(systemName: "slider.horizontal.3")
                Text("Second")
            }
        }.accentColor(.pink)
    }
}