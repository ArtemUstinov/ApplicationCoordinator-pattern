//
//  LoginHandler.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

protocol LoginHandler: Presentable {
    
    var onCompleteAuth: (() -> Void)? { get set }
    
    var onSignUpButtonTapped: (() -> Void)? { get set }
}
