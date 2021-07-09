//
//  ItemsListHandler.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import Foundation

protocol ItemsListHandler: Presentable {
    
    var onItemSelect: ((Item) -> Void)? { get set }
    
}
