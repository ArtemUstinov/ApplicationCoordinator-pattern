//
//  CoordinatorFactoryInterface.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

protocol CoordinatorFactoryInterface {
    
    func makeAuthorizationCoordinator(router: RouterInterface) -> Coordinator & AuthCoordinatorOutput
    
    func makeOnboardingCoordinator(router: RouterInterface) -> Coordinator & OnboardingCoordinatorOutput
    
    func makeTabBarCoordinator() -> (coordinator: Coordinator, toPresent: Presentable)
    
    func makeItemsCoordinator(navigationController: UINavigationController) -> Coordinator
    
    func makeSettingsCoordinator(navigationController: UINavigationController) -> Coordinator
    
}
