//
//  SettingsCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 08.07.2021.
//

import Foundation

final class SettingsCoordinator: BaseCoordinator {
    
    //MARK: - Private properties:
    private let moduleFactory: SettingsModuleFactory
    private let router: RouterInterface
    
    //MARK: - Initializers:
    init(router: RouterInterface, moduleFactory: SettingsModuleFactory) {
        self.router = router
        self.moduleFactory = moduleFactory
    }
    
    //MARK: - Override methods:
    override func start() {
        showSettings()
    }
    
    //MARK: - Private methods:
    func showSettings() {
        let settingsFlowOutput = moduleFactory.makeSettingsOutput()
        router.setRootModule(settingsFlowOutput)
    }
    
}
