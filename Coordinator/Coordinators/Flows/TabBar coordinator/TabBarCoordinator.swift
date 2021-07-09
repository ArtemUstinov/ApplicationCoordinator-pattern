//
//  TabBarCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import UIKit

final class TabBarCoordinator: BaseCoordinator {
    
    //MARK: - Private properties:
    private let tabBarInterface: TabBarControllerInterface
    private let coordinatorFactory: CoordinatorFactoryInterface
    
    //MARK: - Initializers:
    init(tabBarInterface: TabBarControllerInterface, coordinatorFactory: CoordinatorFactoryInterface) {
        self.tabBarInterface = tabBarInterface
        self.coordinatorFactory = coordinatorFactory
    }
    
    //MARK: - Override methods:
    override func start() {
        tabBarInterface.onViewDidLoad = runItemsFlow()
        tabBarInterface.onItemFlowSelect = runItemsFlow()
        tabBarInterface.onSettingsFlowSelect = runSettingsFlow()
    }
    
    //MARK: - Private methods:
    private func runItemsFlow() -> ((UINavigationController) -> Void) {
        return { [weak self] (navigationController) in
            guard let self = self,
                  navigationController.viewControllers.isEmpty else { return }
            let itemsCoordinator = self.coordinatorFactory.makeItemsCoordinator(navigationController: navigationController)
            self.addDependency(itemsCoordinator)
            itemsCoordinator.start()
        }
    }
    
    private func runSettingsFlow() -> ((UINavigationController) -> Void) {
        return { [weak self] (navigationController) in
            guard let self = self,
                  navigationController.viewControllers.isEmpty else { return }
            let settingsCoordinator = self.coordinatorFactory.makeSettingsCoordinator(navigationController: navigationController)
            self.addDependency(settingsCoordinator)
            settingsCoordinator.start()
        }
    }
    
}
