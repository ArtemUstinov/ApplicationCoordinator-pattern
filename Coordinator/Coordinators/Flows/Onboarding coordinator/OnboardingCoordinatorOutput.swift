//
//  OnboardingCoordinatorOutput.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

protocol OnboardingCoordinatorOutput: class {
    
    var finishFlow: (() -> Void)? { get set }
    
}
