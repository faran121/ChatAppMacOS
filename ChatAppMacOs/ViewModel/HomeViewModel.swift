//
//  HomeViewModel.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedTab = "All Chats"
    @Published var msgs: [RecentMessage] = recentMsgs
    @Published var selectedRecentMsg: String? = recentMsgs.first?.id
    @Published var search = ""
    @Published var message = ""
    @Published var isExpanded = false
    @Published var pickedTab = "Media"
    
    func sendMessage(user: RecentMessage) {
        if self.message != "" {
            let index = msgs.firstIndex { (currentUser) -> Bool in
                return currentUser.id == user.id
            } ?? -1
            
            if index != -1 {
                msgs[index].allMsgs.append(Message(message: self.message, myMessage: true))
                self.message = ""
            }
        }
    }
}
