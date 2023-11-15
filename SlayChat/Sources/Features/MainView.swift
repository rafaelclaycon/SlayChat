//
//  MainView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct MainView: View {

    @State private var isShowingLogin: Bool = false

    var body: some View {
        TabView {
            NavigationStack {
                ChatListView()
            }
            .tabItem {
                Label("Chats", systemImage: "message")
            }

            NavigationStack {
                Text("Account Screen")
            }
            .tabItem {
                Label("Account", systemImage: "person")
            }
        }
        .fullScreenCover(isPresented: $isShowingLogin) {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
