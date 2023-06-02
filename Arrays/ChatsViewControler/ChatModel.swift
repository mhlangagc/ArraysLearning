//
//  ChatModel.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import Foundation
import UIKit

struct ChatModel {
    var senderName: String
    var receiverName: String
    var lastMessage: String
    var lastMessageTimeStamp: String
    var senderImage: UIImage
    var receiverImage: UIImage
    var isGroupChat: Bool
    var isPaidGroup: Bool
    var messages: [Message] // TODO: Add mailsArray to your MailBox structre
}

