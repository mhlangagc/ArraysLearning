//
//  AccountViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var friendsArray = ["Lerato", "Maboni", "Sibonile", "Thato", "Zama"]
    
    lazy var friendsTableView: UITableView = {
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
        title = "My Friends"
    }
    
    func setupUI() {
        view.addSubview(friendsTableView)
        friendsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        friendsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        friendsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        friendsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        friendsTableView.register(FriendsTableViewCell.self,
                                  forCellReuseIdentifier: "FriendsTableViewCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friendsCell = tableView.dequeueReusableCell(withIdentifier: "FriendsTableViewCellID", for: indexPath) as! FriendsTableViewCell
        
        
        friendsCell.nameLabel.text = friendsArray[indexPath.row]
        friendsCell.userNameLabel.text = "@" + friendsArray[indexPath.row].lowercased()
        friendsCell.friendImageView.image = UIImage(named: friendsArray[indexPath.row])
        
        
        return friendsCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // let selectedFriend = friendsArray[indexPath.row]
        
        let friendsController = FriendsVerificationViewController()
        friendsController.friendNameLabel.text = friendsArray[indexPath.row]
        friendsController.userNameLabel.text = "#" + friendsArray[indexPath.row].lowercased()
        friendsController.friendImageView.image = UIImage(named: friendsArray[indexPath.row])
        
        self.navigationController?.pushViewController(friendsController, animated: true)
    }
    
    // Add a Follow Button to each cell and hide the disclosureIndicator
    // When you select the cell it should navigate your to a detail screen.
    
    
}
