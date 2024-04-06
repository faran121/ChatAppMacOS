//
//  TabButton.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {
            withAnimation {
                selectedTab = title
            }
        }, label: {
            VStack(spacing: 7) {
                Image(systemName: self.image)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(selectedTab == title ? .white : .gray)
                
                Text(self.title)
                    .fontWeight(.semibold)
                    .font(.system(size: 11))
                    .foregroundStyle(selectedTab == title ? .white : .gray)
            }
            .padding(.vertical, 8)
            .frame(width: 70)
            .contentShape(Rectangle())
            .background(.primary.opacity(selectedTab == title ? 0.15 : 0))
            .cornerRadius(10)
        })
        .buttonStyle(PlainButtonStyle())
    }
}
