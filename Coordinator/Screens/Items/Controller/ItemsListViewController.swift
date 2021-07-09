//
//  ItemsListViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class ItemsListViewController: NibViewController<ItemsListContentView>, ItemsListHandler {
    
    //MARK: - Public properties:
    var onItemSelect: ((Item) -> Void)?
    
    //MARK: - Private properties:
    private var items: [Item] = []
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Items"
        contentView.tableView.tableFooterView = UIView()
        setItems()
    }
    
    //MARK: - Private methods:
    private func setItems() {
        items = (0...10).map { index in
            return Item(title: "Item # \(index)")
        }
    }
    
}

//MARK: - UITableViewDelegate & DataSource:
extension ItemsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ItemTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.titleLabel.text = items[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        onItemSelect?(item)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
