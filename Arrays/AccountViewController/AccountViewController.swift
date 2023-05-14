//
//  AccountViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class AccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var securityArray = ["Security Notifications", "Two-Step Verification", "Change Number"]
    var manageAccountArray = ["Request Account Info", "Delete My Account"]
    
    lazy var accountTableView: UITableView = {
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
        title = "Account"
    }
    
    func setupUI() {
        view.addSubview(accountTableView)
        accountTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        accountTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        accountTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        accountTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        accountTableView.register(AccountTableViewCell.self, forCellReuseIdentifier: "AccountTableViewCellID")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return securityArray.count
        } else {
            return manageAccountArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let accountCell = tableView.dequeueReusableCell(withIdentifier: "AccountTableViewCellID", for: indexPath) as! AccountTableViewCell
            accountCell.titleLabel.text = securityArray[indexPath.row]
            return accountCell
        } else {
            let accountCell = tableView.dequeueReusableCell(withIdentifier: "AccountTableViewCellID", for: indexPath) as! AccountTableViewCell
            accountCell.titleLabel.text = manageAccountArray[indexPath.row]
            return accountCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Navigation to Security Notifications
        if indexPath.section == 0 && indexPath.row == 0 {
            self.navigationController?.pushViewController(SecurityNotificationsViewController(), animated: true)
        }
        
        if indexPath.section == 0 && indexPath.row == 1 {
            // Back button only shows up when you do a Push. Not a Present
            self.navigationController?.pushViewController(TwoStepVerificationViewController(), animated: true)
        }
        
        if indexPath.section == 0 && indexPath.row == 2 {
            let changeNumberNavController = UINavigationController(rootViewController: ChangeNumberViewController())
            changeNumberNavController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(changeNumberNavController, animated: true)
        }
        
        /*
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                print("Navigate to Security")
            } else {
                print("Navigate Elsewhere")
            }
        } else {
            print("Navigate to Account Manager")
        }
        */
    }
}
