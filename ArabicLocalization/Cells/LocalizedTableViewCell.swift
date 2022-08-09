//
//  LocalizedTableViewCell.swift
//  ArabicLocalization
//
//  Created by Asapp Studios on 8/6/22.
//

import UIKit

class LocalizedTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var placeholderTextField: UITextField!
    @IBOutlet weak var greetingTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
