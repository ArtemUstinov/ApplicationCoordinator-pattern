//
//  OnboardingViewController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class OnboardingViewController: NibViewController<OnboardingContentView>, OnboardingHandler {
    
    //MARK: - Output coordinator:
    var onCompleteOnboarding: (() -> Void)?
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
    }
    
}

//MARK: - OnboardingContentViewDelegate:
extension OnboardingViewController: OnboardingContentViewDelegate {
    func successfulGotItButtonTaped() {
        onCompleteOnboarding?()
    }
}
