//
//  Message.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

struct Message: Identifiable, Equatable {
    var id = UUID().uuidString
    var message: String
    var myMessage: Bool
}

var eachMsg = [
    Message(message: "New Album is Going to be released!!!!", myMessage: false),
    Message(message: "asdfjas ndjew bubwiufa isdgb", myMessage: false),
    Message(message: "qipeuwroi qeyto uqwytuy rqwtu", myMessage: false),
    Message(message: "zcnvnxbcvmn bxzmvbz xcvbmvxcmxcvzvbzxcvbzcv", myMessage: true),
    Message(message: "zcnvnxbcvmnbxzmvbz mxcvbmv xcmxcvzvbzxcvbzcv", myMessage: false),
    Message(message: "vnqbeyivbhwbubv  qiqef ihqgeib qiefbqf hqd", myMessage: true),
    Message(message: "e2riuo285n23 buofhu23 8f8y23r f2u308h f238", myMessage: true),
]
