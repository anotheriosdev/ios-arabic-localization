//
//  SecondViewController.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/4/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocalizedTableViewCell", for: indexPath) as! LocalizedTableViewCell
        cell.titleLabel.text = "This is my Label".localized
        cell.placeholderTextField.placeholder = "My Placeholder".localized
        cell.greetingTextField.text = "Hello, How are you?".localized
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "LocalizedTableViewCell", bundle: .main), forCellReuseIdentifier: "LocalizedTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }

}

