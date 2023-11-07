//
//  ContentView.swift
//  PresenterToDeepLink
//
//  Created by Norbert Grover on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            CardView()
                .tabItem {
                    Label("Card", systemImage: "creditcard")
                }
        }
    }
}

#Preview {
    ContentView()
}
