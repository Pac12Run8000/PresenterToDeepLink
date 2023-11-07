import SwiftUI

enum DeepLinkDestination {
    case profile
    case home
    case card
}

@main
struct PresenterToDeepLinkApp: App {
    @State private var selectedTab: ContentView.Tab = .home
    @State private var deepLinkDestination: DeepLinkDestination?
    
    var body: some Scene {
        WindowGroup {
            ContentView(selectedTab: $selectedTab)
                .onOpenURL { url in
                    handleDeepLink(url: url)
                }
        }
    }
    
    private func handleDeepLink(url: URL) {
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            // If we can't get the host from the URL, there's nothing more to do
            return
        }
        switch host {
        case "profile":
            deepLinkDestination = .profile
            selectedTab = .profile
        case "home":
            deepLinkDestination = .home
            selectedTab = .home
        case "card":
            deepLinkDestination = .card
            selectedTab = .card
        default:
            break
        }
    }
}
