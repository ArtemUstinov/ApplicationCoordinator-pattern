//
//  UITableView +.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

extension UITableView {
    
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(
            withIdentifier: T.identifier,
            for: indexPath
        ) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }
        return cell
    }
    
    func register(_ cellType: UITableViewCell.Type) {
        register(UINib(nibName: cellType.identifier, bundle: nil),
                 forCellReuseIdentifier: cellType.identifier)
    }
    
}
