//
//  AuthCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

final class AuthCoordinator: BaseCoordinator, AuthCoordinatorOutput {
    
    //MARK: - Output:
    var finishFlow: (() -> Void)?
    
    //MARK: - Private properties:    
    private let moduleFactory: AuthModuleFactory
    private let router: RouterInterface
    
    //MARK: - Initializers:
    init(router: RouterInterface, moduleFactory: AuthModuleFactory) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
    
    //MARK: - Override methods:
    override func start() {
        showLogin()
    }
    
    //MARK: - Private methods:
    private func showLogin() {
        var loginOutput = moduleFactory.makeLoginOutput()
        loginOutput.onCompleteAuth = { [weak self] in
            self?.finishFlow?()
        }
        loginOutput.onSignUpButtonTapped = { [weak self] in
            guard let self = self else { return }
            self.showSignUp()
        }
        router.setRootModule(loginOutput, hideNavBar: true)
    }
    
    private func showSignUp() {
        var signUpOutput = moduleFactory.makeSignUpOutput()
        signUpOutput.onSignUpComplete = { [weak self] in
            self?.finishFlow?()
        }
        router.push(signUpOutput)
    }
    
}
