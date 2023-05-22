//
//  TwoStepVerificationViewController.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import Foundation
import UIKit

class FriendsVerificationViewController: UIViewController {
    
    lazy var friendImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50.0
        imageView.backgroundColor = UIColor.lightGray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var friendNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupUI()
        
        // When you select the Follow Button, it should show you the alert controller
        // Show Alert Controller - popup alert style
        // Title - "Confirm you want to follow "Lerato"
        // Button - Confirm and Follow - default style
        // Button - Cancel - cancel style
    }
    
    func setupUI() {
        view.addSubview(friendImageView)
        view.addSubview(friendNameLabel)
        view.addSubview(userNameLabel)
        
        friendImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                             constant: 20).isActive = true
        friendImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        friendImageView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        friendImageView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        
        
        friendNameLabel.topAnchor.constraint(equalTo: friendImageView.bottomAnchor,
                                             constant: 20).isActive = true
        friendNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        userNameLabel.topAnchor.constraint(equalTo: friendNameLabel.bottomAnchor,
                                            constant: 10).isActive = true
        userNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
