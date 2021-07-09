//
//  LoginContentView.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class LoginContentView: UIView, NibViewInterface {
    
    static let nib: UINib = UINib(nibName: "LoginContentView", bundle: nil)
    
    //MARK: - Public properties:
    weak var delegate: LoginContentViewDelegate?
    
    //MARK: - @IBActions:
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        delegate?.successfulLoginButtonTapped()
    }
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        delegate?.successfulSignUpButtonTapped()
    }
    
}
