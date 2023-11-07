import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var deepLinkActive = false
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(1)
            
            CardView()
                .tabItem {
                    Label("Card", systemImage: "creditcard")
                }
                .tag(2)
        }
        .onOpenURL { url in
            if url.lastPathComponent == "card" {
                self.selection = 2
            }
        }
    }
}

#Preview {
    ContentView()
}
