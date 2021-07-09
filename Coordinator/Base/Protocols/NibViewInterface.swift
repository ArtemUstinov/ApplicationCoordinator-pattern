//
//  NibViewInterface.swift
//  Coordinator
//
//  Created by Артём Устинов on 05.07.2021.
//

import UIKit

protocol NibViewInterface: class {
    
    static var nib: UINib { get }
    
}

extension NibViewInterface {
    
    var bundle: Bundle {
        return Bundle(for: Self.self)
    }
    
    static func loadFromNib(owner: Any? = nil,
                            options: [UINib.OptionsKey: Any]? = nil) -> Self {
        return nib.instantiate(withOwner: owner, options: options).first as! Self
    }
    
}
