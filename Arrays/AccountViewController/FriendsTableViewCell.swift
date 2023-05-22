//
//  AccountTableViewCell.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    lazy var friendImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16.0
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var friendLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, userNameLabel])
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        setupUI()
    }
    
    func setupUI() {
        addSubview(friendImageView)
        addSubview(friendLabelStackView)
        
        friendImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        friendImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        friendImageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        friendImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        
        friendLabelStackView.leftAnchor.constraint(equalTo: friendImageView.rightAnchor, constant: 16).isActive = true
        friendLabelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}
