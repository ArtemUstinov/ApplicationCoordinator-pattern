//
//  CoordinatorOutput.swift
//  Coordinator
//
//  Created by Артём Устинов on 05.07.2021.
//

protocol CoordinatorOutput {
    
    var finishFlow: (() -> Void)? { get }
    
}
