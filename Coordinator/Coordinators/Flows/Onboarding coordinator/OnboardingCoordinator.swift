//
//  OnboardingCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import Foundation

final class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {
    
    //MARK: - Output coordinator:
    var finishFlow: (() -> Void)?
    
    //MARK: - Private properties:
    private let moduleFactory: OnboardingModuleFactory
    private let router: RouterInterface
    
    //MARK: - Initializers:
    init(router: RouterInterface, moduleFactory: OnboardingModuleFactory) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
    
    //MARK: - Override methods:
    override func start() {
        showOnboarding()
    }
    
    //MARK: - Private methods:
    private func showOnboarding() {
        var onboardingOutput = moduleFactory.makeOnboardingOutput()
        onboardingOutput.onCompleteOnboarding = { [weak self] in
            self?.finishFlow?()
        }
        router.setRootModule(onboardingOutput, hideNavBar: true)
    }
    
}
