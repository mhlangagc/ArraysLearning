//
//  MessageViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import Foundation
import Foundation
import UIKit

class MessagesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // TODO: Empty Array of Emails
    var messagesArray: [Message] = []
    
    private lazy var messagesTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = ""
        setupUI()
        registerCells()
    }
    
    
    func registerCells() {
        messagesTableView.register(MessageTableViewCell.self,
                                  forCellReuseIdentifier: "MessageTableViewCellID")
    }

    func setupUI() {
        view.addSubview(messagesTableView)
        messagesTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        messagesTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        messagesTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        messagesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let messageCell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCellID", for: indexPath) as! MessageTableViewCell
        messageCell.senderLabel.text = messagesArray[indexPath.row].sender
        messageCell.messageLabel.text = messagesArray[indexPath.row].message
        return messageCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
