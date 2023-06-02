//
//  Chats.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/06/02.
//

import Foundation
import UIKit

// TODO: Emails Database Class
class ChatsDatabase {
    
    // Sit on the internet
    var chatsArray = [ChatModel(senderName: "Lerato",
                                receiverName: "Gugulethu",
                                lastMessage: "No worry bro. 😎",
                                lastMessageTimeStamp: "07:45",
                                senderImage: UIImage(named: "lerato")!,
                                receiverImage: UIImage(),
                                isGroupChat: false,
                                isPaidGroup: false,
                                messages: [Message(message: "But you can see from the git commits that the development is actively underway.",
                                                   time: "14:45",
                                                   sender: "Simphiwe",
                                                   receiver: "Gugulethu"),
                                           Message(message: "I just decided not to create and describe the logic of how the elements work because it can take time.",
                                                              time: "14:45",
                                                              sender: "Lerato",
                                                              receiver: "Gugulethu"),
                                           Message(message: "today I will work late on your project in order to develop it as much as possible, somewhere at 8-9 in the evening I will try to update the site again",
                                                              time: "14:45",
                                                              sender: "Asanda",
                                                              receiver: "Gugulethu")]),
                      
                      ChatModel(senderName: "Maboni",
                                receiverName: "Gugulethu",
                                lastMessage: "Did you get started with your idea?",
                                lastMessageTimeStamp: "10:53",
                                senderImage: UIImage(named: "maboni")!,
                                receiverImage: UIImage(),
                                isGroupChat: true,
                                isPaidGroup: true,
                                messages: []),
                      
                      ChatModel(senderName: "Sibonile",
                                receiverName: "Gugulethu",
                                lastMessage: "I also want to pay you in advance. Can I put the down payment for $330 today then the rest when we complete the project.",
                                lastMessageTimeStamp: "12:19",
                                senderImage: UIImage(), // the group didn't add a profile picture
                                receiverImage: UIImage(),
                                isGroupChat: true,
                                isPaidGroup: false,
                                messages: []),
    
                      ChatModel(senderName: "Noni",
                                receiverName: "Gugulethu",
                                lastMessage: "I also want to pay you in advance. Can I put the down payment for $330 today then the rest when we complete the project.",
                                lastMessageTimeStamp: "12:19",
                                senderImage: UIImage(), // the group didn't add a profile picture
                                receiverImage: UIImage(),
                                isGroupChat: true,
                                isPaidGroup: false,
                                messages: [])
    
    ]
}
