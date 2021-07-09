//
//  SignUpContentView.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class SignUpContentView: UIView, NibViewInterface {
    
    static let nib: UINib = UINib(nibName: "SignUpContentView", bundle: nil)
    
    //MARK: - Public properties:
    weak var delegate: SignUpContentViewDelegate?

    //MARK: - @IBActions:
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        delegate?.successfulSignUpButtonTapped()
    }
    
}
