//
//  ThirdViewController.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/4/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var btnChangeLanguage: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnChangeLanguage.setTitle("Change Language".localized, for: .normal)
    }

    @IBAction func changeLanguage(_ sender: UIButton) {
        Defaults.language = Defaults.language == "en" ? "ar" : "en"
        NotificationCenter.default.post(name: NSNotification.Name("ChangeAppLanguage"), object: nil)
        tabBarController?.selectedIndex = 0
    }

}
