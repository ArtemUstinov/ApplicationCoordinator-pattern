//
//  SettingsContentView.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

protocol SettingsContentViewInterface: class {
    var tableView: UITableView! { get }
}

final class SettingsContentView: UIView, NibViewInterface, SettingsContentViewInterface {
    
    static let nib: UINib = UINib(nibName: "SettingsContentView", bundle: nil)
    
    //MARK: - @IBOutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Override methods:
    override func awakeFromNib() {
        super.awakeFromNib()
        setupTableView()
    }
    
    //MARK: - Private methods:
    private func setupTableView() {
        tableView.register(SettingsTableViewCell.self)
    }
    
}
