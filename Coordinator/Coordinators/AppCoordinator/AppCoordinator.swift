//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    
    //MARK: - Private properties:
    private let coordinatorFactory: CoordinatorFactoryInterface
    private let router: RouterInterface
    
    private var launchInstructor: LaunchInstructor {
        return LaunchInstructor.configure()
    }
    
    //MARK: - Initializers:
    init(router: RouterInterface, coordinatorFactory: CoordinatorFactoryInterface) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    //MARK: - Override methods:
    override func start() {
        switch launchInstructor {
        case .main: return runMainFlow()
        case .authorization: return runAuthorizationFlow()
        case .onboarding: return runOnboardingFlow()
        }
    }
    
    //MARK: - Private methods:
    private func runAuthorizationFlow() {
        let coordinator = coordinatorFactory.makeAuthorizationCoordinator(router: router)
        coordinator.finishFlow = { [weak self, unowned coordinator] in
            Constants.isAuthorized = true
            self?.start()
            self?.removeDependency(coordinator)
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runOnboardingFlow() {
        let coordinator = coordinatorFactory.makeOnboardingCoordinator(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            Constants.isShowOnboarding = true
            self?.start()
            self?.removeDependency(coordinator)
        }
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runMainFlow() {
        let (coordinator, module) = coordinatorFactory.makeTabBarCoordinator()
        addDependency(coordinator)
        router.setRootModule(module, hideNavBar: true)
        coordinator.start()
    }
    
}
