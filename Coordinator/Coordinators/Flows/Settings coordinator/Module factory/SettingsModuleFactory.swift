//
//  SettingsModuleFactory.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import Foundation

protocol SettingsModuleFactory: class {
    
    func makeSettingsOutput() -> SettingsHandler
    
}
