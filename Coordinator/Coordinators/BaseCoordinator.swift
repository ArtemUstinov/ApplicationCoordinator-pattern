//
//  BaseCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import Foundation

protocol BaseCoordinatorInterface: class {
    func addDependency(_ coordinator: Coordinator)
    func removeDependency(_ coordinator: Coordinator?)
}

class BaseCoordinator: Coordinator, BaseCoordinatorInterface {
    
    //MARK: - Public properties:
    var childCoordinators: [Coordinator] = []
    
    //MARK: - Public methods:
    func start() { }
    
    func addDependency(_ coordinator: Coordinator) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator?) {
        guard !childCoordinators.isEmpty,
              let coordinator = coordinator as? BaseCoordinator,
              !coordinator.childCoordinators.isEmpty else { return }
        coordinator.childCoordinators
            .filter { $0 !== coordinator }
            .forEach { coordinator.removeDependency($0) }
        
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            return
        }
    }
    
}
