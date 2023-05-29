//
//  AccountViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit



class ChatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var chatsArray = [ChatModel(senderName: "Lerato",
                                receiverName: "Gugulethu",
                                lastMessage: "No worry bro. 😎",
                                lastMessageTimeStamp: "07:45",
                                senderImage: UIImage(named: "lerato")!,
                                receiverImage: UIImage(),
                                isGroupChat: false,
                                isPaidGroup: false),
                      
                      ChatModel(senderName: "Maboni",
                                receiverName: "Gugulethu",
                                lastMessage: "Did you get started with your idea?",
                                lastMessageTimeStamp: "10:53",
                                senderImage: UIImage(named: "maboni")!,
                                receiverImage: UIImage(),
                                isGroupChat: true,
                                isPaidGroup: true),
                      
                      ChatModel(senderName: "Sibonile",
                                receiverName: "Gugulethu",
                                lastMessage: "I also want to pay you in advance. Can I put the down payment for $330 today then the rest when we complete the project.",
                                lastMessageTimeStamp: "12:19",
                                senderImage: UIImage(), // the group didn't add a profile picture
                                receiverImage: UIImage(),
                                isGroupChat: true,
                                isPaidGroup: false)]
    
    
    lazy var chatsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        registerCells()
        title = "Chats"
    }
    
    func setupUI() {
        view.addSubview(chatsTableView)
        chatsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        chatsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        chatsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        chatsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        chatsTableView.register(ChatsTableViewCell.self,
                                  forCellReuseIdentifier: "ChatsTableViewCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID", for: indexPath) as! ChatsTableViewCell
        
        let chat = chatsArray[indexPath.row]
        
        /*
        let chat = ChatModel(senderName: "Simphiwe",
                             receiverName: "Gugulethu",
                             lastMessage: "How do these cellForRows really work?",
                             lastMessageTimeStamp: "16:37",
                             senderImage: UIImage(named: "thato")!,
                             receiverImage: UIImage())
        */
        
        chatsTableViewCell.nameLabel.text = chat.senderName
        chatsTableViewCell.recentMessageLabel.text = chat.lastMessage
        chatsTableViewCell.timeStampLabel.text = chat.lastMessageTimeStamp
        
        if chat.isGroupChat == true  {
            if chat.isPaidGroup == true {
                chatsTableViewCell.friendImageView.image = UIImage(named: "ic_paid_group")
            } else {
                chatsTableViewCell.friendImageView.image = UIImage(named: "ic_group_chat")
            }
        } else {
            chatsTableViewCell.friendImageView.image = chat.senderImage
        }
        
        
        /*
        chatsTableViewCell.recentMessageLabel.text = "Hi Gugulethu. How is it going with the testing?"
        chatsTableViewCell.friendImageView.image = UIImage(named: chatsArray[indexPath.row])
        chatsTableViewCell.timeStampLabel.text = "19:08"
        */
        return chatsTableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let messageViewController = MessagesViewController()
        // tweetsViewController.profile = followersArray[indexPath.row]
        self.navigationController?.pushViewController(messageViewController, animated: true)
    }
    
}
