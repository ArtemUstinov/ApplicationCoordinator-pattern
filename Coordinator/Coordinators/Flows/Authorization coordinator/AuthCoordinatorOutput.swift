//
//  AuthCoordinatorOutput.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

protocol AuthCoordinatorOutput: class {
    
    var finishFlow: (() -> Void)? { get set }
    
}
