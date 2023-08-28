//
//  ViewController.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var greetingsTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //random commit
        
        titleLabel.text = "This is my Label".localized
        greetingsTextField.placeholder = "My Placeholder".localized
        textView.text = "Get busy living or get busy dying.".localized
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.viewControllers?[0].tabBarItem.title = NSLocalizedString("Home".localized, comment: "")
        self.tabBarController?.viewControllers?[1].tabBarItem.title = NSLocalizedString("Inbox".localized, comment: "")
        self.tabBarController?.viewControllers?[2].tabBarItem.title = NSLocalizedString("Settings".localized, comment: "")
    }
}

