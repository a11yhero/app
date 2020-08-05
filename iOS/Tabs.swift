import SwiftUI

struct Tabs: View {
    @State var title = LocalizedStringKey("")
    
    var body: some View {
        NavigationView {
            TabView {
                Home(title: $title)
                    .tabItem {
                        Image(systemName: "app.fill")
                        Text("Home")
                    }
                Types(title: $title)
                    .tabItem {
                        Image(systemName: "textformat.size")
                        Text("Type")
                    }.navigationBarTitle("Dynamic.type", displayMode: .large)
                Colors(title: $title)
                    .tabItem {
                        Image(systemName: "circle.lefthalf.fill")
                        Text("Colors")
                    }
                Attributes(title: $title)
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                        Text("Features")
                    }
                Settings(title: $title)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }.navigationBarTitle(title, displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
            .accentColor(.pink)
    }
}
