//
//  ItemTableViewCell.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

protocol ItemTableViewCellInterface: class {
    var titleLabel: UILabel! { get }
}

final class ItemTableViewCell: UITableViewCell, ItemTableViewCellInterface {
    
    @IBOutlet weak var titleLabel: UILabel!
    
}
