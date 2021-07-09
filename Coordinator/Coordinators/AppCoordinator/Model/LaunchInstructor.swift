//
//  LaunchInstructor.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

public enum LaunchInstructor {
    
    case main
    case authorization
    case onboarding
    
    static func configure(isShowTutorial: Bool = Constants.isShowOnboarding,
                          isAuthorized: Bool = Constants.isAuthorized) -> LaunchInstructor {
        
        switch (isShowTutorial, isAuthorized) {
        case (true, false), (false, false): return .authorization
        case (false, true): return .onboarding
        case (true, true): return .main
        }
        
    }
    
}
