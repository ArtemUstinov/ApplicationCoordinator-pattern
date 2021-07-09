//
//  SettingsTableViewCell.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

protocol SettingsTableViewCellInterface: class {
    var titleLabel: UILabel! { get }
}

final class SettingsTableViewCell: UITableViewCell, SettingsTableViewCellInterface {
    
    @IBOutlet weak var titleLabel: UILabel!
    
}
