//
//  Coordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 05.07.2021.
//

protocol Coordinator: class {
    
    var childCoordinators: [Coordinator] { get }
    
    func start()
    
}


