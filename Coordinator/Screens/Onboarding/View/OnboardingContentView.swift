//
//  OnboardingContentView.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class OnboardingContentView: UIView, NibViewInterface {
    
    static let nib: UINib = UINib(nibName: "OnboardingContentView", bundle: nil)
    
    weak var delegate: OnboardingContentViewDelegate?

    //MARK: - @IBActions:
    @IBAction func gotItButtonTapped(_ sender: UIButton) {
        delegate?.successfulGotItButtonTaped()
    }
    
}
