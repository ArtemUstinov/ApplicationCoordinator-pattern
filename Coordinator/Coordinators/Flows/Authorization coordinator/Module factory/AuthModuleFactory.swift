//
//  AuthModuleFactory.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

protocol AuthModuleFactory: class {
    
    func makeLoginOutput() -> LoginHandler
    
    func makeSignUpOutput() -> SignUpHandler
    
}
