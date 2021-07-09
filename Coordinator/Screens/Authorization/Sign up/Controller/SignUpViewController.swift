//
//  SignUpViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class SignUpViewController: NibViewController<SignUpContentView>, SignUpHandler {
    
    //MARK: - Output:
    var onSignUpComplete: (() -> Void)?
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
}

//MARK: - SignUpContentViewDelegate:
extension SignUpViewController: SignUpContentViewDelegate {
    
    func successfulSignUpButtonTapped() {
        onSignUpComplete?()
    }
    
}
