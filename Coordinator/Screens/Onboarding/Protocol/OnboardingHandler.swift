//
//  OnboardingHandler.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import Foundation

protocol OnboardingHandler: Presentable {
    
    var onCompleteOnboarding: (() -> Void)? { get set }
    
}
