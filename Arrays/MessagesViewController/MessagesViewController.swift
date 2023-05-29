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
    
    private lazy var messagesTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.backgroundColor = .red
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Simphiwe"
        setupUI()
        registerCells()
    }
    
    
    func registerCells() {
        messagesTableView.register(TweetsTableViewCell.self,
                                  forCellReuseIdentifier: "TweetsTableViewCellID")
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
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tweetsCell = tableView.dequeueReusableCell(withIdentifier: "TweetsTableViewCellID", for: indexPath) as! TweetsTableViewCell
//        tweetsCell.profileNameLabel.text = profile
//        tweetsCell.tweetsLabel.text = tweetsArray[indexPath.row]
        return tweetsCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
