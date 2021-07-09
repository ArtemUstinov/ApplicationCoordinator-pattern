//
//  NibViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 05.07.2021.
//

import UIKit

class NibViewController<ContentView: UIView & NibViewInterface>: ViewController<ContentView> {
    
    override func loadContentView() -> ContentView {
        return ContentView.loadFromNib(owner: self, options: nil)
    }
    
}
