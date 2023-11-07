import SwiftUI

struct ContentView: View {
    @Binding var selectedTab: Tab
    @State private var deepLinkDestination: DeepLinkDestination?
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
            
            CardView()
                .tabItem {
                    Label("Card", systemImage: "creditcard")
                }
                .tag(Tab.card)
        }
//        .onOpenURL { url in
//            if url.lastPathComponent == "card" {
//                self.selection = 2
//            }
//        }
        .onOpenURL { url in
            print("Received URL: \(url)")
            switch url.host {
            case "card":
                print("Navigating to CardView")
                self.selectedTab = .card
            default:
                break
            }
        }
    }
    enum Tab {
        case home
        case profile
        case card
    }
}




