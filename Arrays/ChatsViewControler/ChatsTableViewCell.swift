//
//  AccountTableViewCell.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/14.
//

import UIKit

class ChatsTableViewCell: UITableViewCell {
    
    lazy var friendImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 32.0
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var recentMessageLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var friendLabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, recentMessageLabel])
        stackView.distribution = .fillProportionally
        stackView.spacing = 4.0
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .none
        setupUI()
    }
    
    func setupUI() {
        addSubview(friendImageView)
        addSubview(timeStampLabel)
        addSubview(friendLabelStackView)
        
        friendImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        friendImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        friendImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        friendImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        friendImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        
        timeStampLabel.rightAnchor.constraint(equalTo: rightAnchor,
                                             constant: -16).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: friendImageView.topAnchor).isActive = true
        
        friendLabelStackView.leftAnchor.constraint(equalTo: friendImageView.rightAnchor, constant: 16).isActive = true
        friendLabelStackView.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor).isActive = true
        friendLabelStackView.topAnchor.constraint(equalTo: friendImageView.topAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}
