//
//  ItemsListContentView.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

protocol ItemsContentViewInterface: class {
    var tableView: UITableView! { get }
}

final class ItemsListContentView: UIView, NibViewInterface {
    
    static let nib: UINib = UINib(nibName: "ItemsListContentView", bundle: nil)
    
    //MARK: - @IBOutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Override methods:
    override func awakeFromNib() {
        super.awakeFromNib()
        setupTableView()
    }
    
    //MARK: - Private methods:
    private func setupTableView() {
        tableView.register(ItemTableViewCell.self)
    }
    
}
