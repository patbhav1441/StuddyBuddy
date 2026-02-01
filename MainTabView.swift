// MainTabView.swift
import SwiftUI

struct MainTabView: View {
    @StateObject private var discoverVM = DiscoverViewModel()
    @StateObject private var chatVM = ChatViewModel()

    var body: some View {
        TabView {
            DiscoverView(viewModel: discoverVM)
                .tabItem { Label("Discover", systemImage: "sparkles") }

            TutorView()
                .tabItem { Label("Tutor", systemImage: "graduationcap") }

            MatchesView(viewModel: discoverVM)
                .tabItem { Label("Matches", systemImage: "heart") }

            ChatView(viewModel: chatVM)
                .tabItem { Label("Chat", systemImage: "message") }

            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}
