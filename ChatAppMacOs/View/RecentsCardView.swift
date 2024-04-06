//
//  RecentsCardView.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct RecentsCardView: View {
    
    var recentMsg: RecentMessage
    
    var body: some View {
        HStack {
            Image(recentMsg.userImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            VStack(spacing: 4) {
                HStack {
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text(recentMsg.userName)
                            .fontWeight(.bold)
                        
                        Text(recentMsg.lastMsg)
                            .font(.caption)
                    })
                    
                    Spacer(minLength: 10)
                    
                    VStack {
                        Text(recentMsg.lasMsgTime)
                            .font(.caption)
                        
                        Text(recentMsg.pendingMsgs)
                            .font(.caption2)
                            .padding(5)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                }
            }
        }
    }
}

#Preview {
    Home()
}
