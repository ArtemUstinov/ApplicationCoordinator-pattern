//
//  SignUpHandler.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

protocol SignUpHandler: Presentable {
    
    var onSignUpComplete: (() -> Void)? { get set }
    
}
