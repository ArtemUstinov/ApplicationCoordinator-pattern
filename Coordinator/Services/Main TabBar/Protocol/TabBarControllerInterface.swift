//
//  TabBarControllerInterface.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import UIKit

protocol TabBarControllerInterface: class {
    
    var onItemFlowSelect: ((UINavigationController) -> Void)? { get set }
    var onSettingsFlowSelect: ((UINavigationController) -> Void)? { get set }
    var onViewDidLoad: ((UINavigationController) -> Void)? { get set }
    
}
