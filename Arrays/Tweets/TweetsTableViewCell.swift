//  AccountTableViewCell.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import UIKit

class TweetsTableViewCell: UITableViewCell {
    
    lazy var profileNameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tweetsLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.medium)
        label.textColor = UIColor.darkGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .none
        setupUI()
    }
    
    func setupUI() {
        addSubview(profileNameLabel)
        addSubview(tweetsLabel)
        
        profileNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        profileNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        profileNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        tweetsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        tweetsLabel.topAnchor.constraint(equalTo: profileNameLabel.bottomAnchor,
                                         constant: 8).isActive = true
        tweetsLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        tweetsLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}
