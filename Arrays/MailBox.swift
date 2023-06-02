//
//  MailBox.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/06/02.
//

import Foundation
import UIKit

struct MailBoxModel {
    var title: String
    var icon: UIImage
    var numberOfUnreadEmails: Int
    var emails: [EmailModel]
}

//if mailBox == "inbox" {
//    return inboxArray.count
//}

struct EmailModel {
    var title: String
    var timeStamp: Date
    var senderEmail: String
    var previewContent: String
    var content: String
    var attachments: [UIImage]
}

let inboxEmailArray = [EmailModel(title: "Spotify",
                                 timeStamp: Date(),
                                 senderEmail: "hello@spotify.com",
                                 previewContent: "Hey you account is overdue",
                                 content: "",
                                  attachments: []),
                       
                       EmailModel(title: "Spotify",
                                  timeStamp: Date(),
                                  senderEmail: "hello@spotify.com",
                                  previewContent: "Hey you account is overdue",
                                  content: "",
                                  attachments: [])]

let inboxMailBox = MailBoxModel(title: "Inbox",
                                icon: UIImage(),
                                numberOfUnreadEmails: 0,
                                emails: inboxEmailArray)

//return inboxMailBox.emails.count
