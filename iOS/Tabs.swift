import SwiftUI

struct Tabs: View {
    @State private var selected = 0
    
    var body: some View {
        TabView(selection: $selected) {
            Home(tab: $selected)
                .tabItem {
                    Image(systemName: "app.fill")
                    Text("Home")
                }.tag(0)
            Types()
                .tabItem {
                    Image(systemName: "textformat.size")
                    Text("Type")
                }.tag(1)
            Colors()
                .tabItem {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Colors")
                }.tag(2)
            Attributes()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Features")
                }.tag(3)
        }.accentColor(.pink)
    }
}
