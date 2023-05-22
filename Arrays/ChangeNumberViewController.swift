import Foundation
import UIKit

class ChangeNumberViewController: UIViewController {
    
    // var arrayOfFruits: [String] = [] // Empty Array of Type String.
    
    var phoneNumber = ""
    
    lazy var phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Change Number"
        addCloseButton()
        setupLabel()
        phoneNumberLabel.text = phoneNumber
        
    }
    
    func setupLabel() {
        view.addSubview(phoneNumberLabel)
        phoneNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        phoneNumberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func addCloseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.compose,
                                                           target: self,
                                                           action: #selector(composeTweet))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.close,
                                                           target: self,
                                                           action: #selector(handleDismiss))
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
    
    @objc func composeTweet() {
        
    }
    
}
