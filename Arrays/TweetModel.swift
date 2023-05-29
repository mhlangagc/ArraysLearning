//
//  TweetModel.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import Foundation
import UIKit

struct Tweet {
    var senderName: String
    var senderImage: UIImage
    var senderUserName: String
    var tweetContent: String
    var numberOfComments: Int
    var numberOfRetweets: Int
    var numberOfLikes: Int
    var numberOfViews: Int // 1900000 -> 1.9M
    var isThread: Bool
    var isVerified: Bool
    var timeStamp: String // Date
    var characterCount: Int
}

// Enums

