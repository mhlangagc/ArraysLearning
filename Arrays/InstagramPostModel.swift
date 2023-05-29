//
//  InstagramPostModel.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import UIKit
import Foundation

struct InstagramPost {
    var userProfileImage: UIImage
    var userName: String
    var isFollowing: Bool
    var arrayOfImages: [UIImage]
    var isLiked: Bool
    var numberOfLikes: Int
    var message: String
    var numberOfComments: Int
    var timeStamp: Date
    var isInstagramSuggested: Bool
    var numberOfTweets: [Tweet]
}
