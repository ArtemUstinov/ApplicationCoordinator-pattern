//
//  RouterInterface.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import Foundation

protocol RouterInterface: Presentable {
    
    func push(_ module: Presentable)
    func push(_ module: Presentable, hideBottomBar: Bool)
    
    func setRootModule(_ module: Presentable)
    func setRootModule(_ module: Presentable, hideNavBar: Bool)
    
}
