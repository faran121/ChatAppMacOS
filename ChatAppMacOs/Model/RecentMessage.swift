//
//  RecentsMessage.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct RecentMessage: Identifiable {
    var id = UUID().uuidString
    var lastMsg: String
    var lasMsgTime: String
    var pendingMsgs: String
    var userName: String
    var userImage: String
    var allMsgs: [Message]
}

var recentMsgs: [RecentMessage] = [
    RecentMessage(lastMsg: "Apple Tech!!!!", lasMsgTime: "15:00", pendingMsgs: "9", userName: "Apple", userImage: "p4", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Banana Tech!!!!", lasMsgTime: "15:50", pendingMsgs: "2", userName: "Banana", userImage: "p0", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Peach Tech!!!!", lasMsgTime: "16:00", pendingMsgs: "1", userName: "Peach", userImage: "p2", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Pear Tech!!!!", lasMsgTime: "11:00", pendingMsgs: "11", userName: "Pear", userImage: "p3", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Roxane is dead!!!!", lasMsgTime: "14:00", pendingMsgs: "0", userName: "Roxane", userImage: "p1", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Rogers is alive!!!!", lasMsgTime: "11:20", pendingMsgs: "5", userName: "Rogers", userImage: "p6", allMsgs: eachMsg.shuffled()),
    RecentMessage(lastMsg: "Microsoft!!!!", lasMsgTime: "20:00", pendingMsgs: "3", userName: "Micorsoft", userImage: "p5", allMsgs: eachMsg.shuffled())
]


