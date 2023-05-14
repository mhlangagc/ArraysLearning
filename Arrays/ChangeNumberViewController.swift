import Foundation
import UIKit

class ChangeNumberViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Change Number"
        addCloseButton()
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
