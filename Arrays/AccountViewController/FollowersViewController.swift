//
//  AccountViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class FollowersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var followersArray = ["Lerato", "Maboni", "Sibonile", "Thato", "Zama"]
    
    lazy var followersTableView: UITableView = {
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
        title = "Folders"
    }
    
    func setupUI() {
        view.addSubview(followersTableView)
        followersTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        followersTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        followersTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        followersTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        followersTableView.register(FollowersTableViewCell.self,
                                  forCellReuseIdentifier: "FollowersTableViewCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friendsCell = tableView.dequeueReusableCell(withIdentifier: "FollowersTableViewCellID", for: indexPath) as! FollowersTableViewCell
        
        friendsCell.nameLabel.text = followersArray[indexPath.row]
        friendsCell.userNameLabel.text = "@" + followersArray[indexPath.row].lowercased()
        friendsCell.friendImageView.image = UIImage(named: followersArray[indexPath.row])
        
        return friendsCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let tweetsViewController = TweetViewController()
        tweetsViewController.profile = followersArray[indexPath.row]
        self.navigationController?.pushViewController(tweetsViewController, animated: true)
    }
    
}
