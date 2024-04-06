//
//  Home.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    
    @StateObject var homeData = HomeViewModel()
    
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                TabButton(image: "message", title: "All Chats", selectedTab: $homeData.selectedTab)
                TabButton(image: "person", title: "Personal", selectedTab: $homeData.selectedTab)
                TabButton(image: "bubble.middle.bottom", title: "Bots", selectedTab: $homeData.selectedTab)
                TabButton(image: "slider.horizontal.3", title: "Edit", selectedTab: $homeData.selectedTab)
                
                Spacer()
                
                TabButton(image: "gear", title: "Settings", selectedTab: $homeData.selectedTab)
            }
            .padding()
            .padding(.top, 35)
            .background(BlurView())
            
            ZStack {
                switch self.homeData.selectedTab {
                case "All Chats": NavigationView { AllChatsView() }
                case "Personal": Text("Personal")
                case "Bots": Text("Bots")
                case "Edit": Text("Edit")
                case "Settings": Text("Settings")
                default: Text("")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.2, height: screen.height - 60)
        .environmentObject(self.homeData)
    }
}

#Preview {
    Home()
}
