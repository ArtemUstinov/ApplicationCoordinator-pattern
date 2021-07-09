//
//  ItemDetailViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class ItemDetailViewController: NibViewController<ItemDetailContentView>, ItemDetailHandler {
    
    //MARK: - Private properties:
    private var item: Item?
    
    //MARK: - Initializers:
    init(item: Item? = nil) {
        self.item = item
    }
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        title = item?.title ?? "Detail"
    }
    
}
