//
//  LoginViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class LoginViewController: NibViewController<LoginContentView>, LoginHandler {
    
    //MARK: - Output:
    var onCompleteAuth: (() -> Void)?
    
    var onSignUpButtonTapped: (() -> Void)?
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
}

//MARK: - LoginContentViewDelegate:
extension LoginViewController: LoginContentViewDelegate {
    
    func successfulLoginButtonTapped() {
        onCompleteAuth?()
    }
    
    func successfulSignUpButtonTapped() {
        onSignUpButtonTapped?()
    }
    
}
