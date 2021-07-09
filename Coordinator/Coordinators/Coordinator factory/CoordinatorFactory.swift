//
//  CoordinatorFactory.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import UIKit

final class CoordinatorFactory: CoordinatorFactoryInterface {
    
    //MARK: - Private properties:
    private let moduleFactory = ModuleFactory()
    
    //MARK: - Public methods:
    func makeAuthorizationCoordinator(router: RouterInterface) -> AuthCoordinatorOutput & Coordinator {
        let coordinator = AuthCoordinator(router: router,
                                          moduleFactory: moduleFactory)
        return coordinator
    }
    
    func makeOnboardingCoordinator(router: RouterInterface) -> Coordinator & OnboardingCoordinatorOutput {
        return OnboardingCoordinator(router: router,
                                     moduleFactory: moduleFactory)
    }
    
    func makeTabBarCoordinator() -> (coordinator: Coordinator,
                                     toPresent: Presentable) {
        let tabBarController = TabBarController()
        let tabBarCoordinator = TabBarCoordinator(tabBarInterface: tabBarController,
                                                  coordinatorFactory: self)
        return (tabBarCoordinator, tabBarController)
    }
    
    func makeItemsCoordinator(navigationController: UINavigationController) -> Coordinator {
        let router = Router(rootViewController: navigationController)
        return ItemsListCoordinator(router: router,
                                    moduleFactory: moduleFactory,
                                    coordinatorFactory: self)
    }
    
    func makeSettingsCoordinator(navigationController: UINavigationController) -> Coordinator {
        let router = Router(rootViewController: navigationController)
        return SettingsCoordinator(router: router,
                                   moduleFactory: moduleFactory)
    }
    
}
