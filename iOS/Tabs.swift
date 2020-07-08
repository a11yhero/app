import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "app.fill")
                    Text("Home")
                }
            Types()
                .tabItem {
                    Image(systemName: "textformat.size")
                    Text("Type")
                }
            Colors()
                .tabItem {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Colors")
                }
            Attributes()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Features")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }.accentColor(.pink)
    }
}
