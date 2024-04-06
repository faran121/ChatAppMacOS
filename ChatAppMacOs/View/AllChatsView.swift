//
//  AllChatsView.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct AllChatsView: View {
    
    @EnvironmentObject var homeData: HomeViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "plus")
                        .font(.title2)
                        .foregroundStyle(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.gray)
                
                TextField("Search", text: $homeData.search)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .background(.primary.opacity(0.15))
            .cornerRadius(10)
            .padding()
            
            List(selection: $homeData.selectedRecentMsg) {
                ForEach(homeData.msgs) { message in
                    NavigationLink(
                        destination: DetailsView(user: message)) {
                        RecentsCardView(recentMsg: message)
                    }
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}

#Preview {
    Home()
}
