//
//  ChatModel.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import Foundation
import UIKit

/// Chat
/// - senderName
/// - receiverName
/// - lastMessage
/// - lastMessageTimestamp
/// - senderImage
/// - receiverImage
///


/// Human
/// - skinColor = browm, white, red
/// - eyeColor = blue, brown etc
/// - countryOfOrigin = "South Africa"
/// - race = african,
/// - gender - male, female etc

struct ChatModel {
    // Properties of a Struct / ChatModel
    var senderName: String
    var receiverName: String
    var lastMessage: String
    var lastMessageTimeStamp: String // 29.05.2023 20.37.450 T
    var senderImage: UIImage
    var receiverImage: UIImage
    var isGroupChat: Bool
    var isPaidGroup: Bool
    // var layoutType: String // middleImage, noTimeStamp
}
