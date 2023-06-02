//
//  AccountViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class ChatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    // TODO: User this as a way to point to the MailsDatabase
    let chatsDatabase = ChatsDatabase()
    
    lazy var chatsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        registerCells()
        title = "To Do"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAdd))
    }
    
    @objc func handleAdd() {
        
        let newChat =  ChatModel(senderName: "Ndalo",
                                 receiverName: "Gugulethu",
                                 lastMessage: "I also want to pay you in advance. Can I put the down payment for $330 today then the rest when we complete the project.",
                                 lastMessageTimeStamp: "12:19",
                                 senderImage: UIImage(), // the group didn't add a profile picture
                                 receiverImage: UIImage(),
                                 isGroupChat: true,
                                 isPaidGroup: false,
                                 messages: [])
        
        chatsDatabase.chatsArray.append(newChat)
        chatsTableView.reloadData() // reload the screen when new data is available
        
        // Run a function to store on internet
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
        return chatsDatabase.chatsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID", for: indexPath) as! ChatsTableViewCell
        
        let chat = chatsDatabase.chatsArray[indexPath.row]
        
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
        let chat = chatsDatabase.chatsArray[indexPath.row]
        let messageViewController = MessagesViewController()
        messageViewController.messagesArray = chat.messages
        self.navigationController?.pushViewController(messageViewController, animated: true)
    }
    
}
