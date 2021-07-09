//
//  ModuleFactory.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import Foundation

final class ModuleFactory: ItemsListModuleFactory,
                           AuthModuleFactory,
                           OnboardingModuleFactory,
                           SettingsModuleFactory {
    
    //MARK: - ItemsListModuleFactory:
    func makeItemsOutput() -> ItemsListHandler {
        return ItemsListViewController()
    }
    
    func makeItemDetailOutput(_ item: Item) -> ItemDetailHandler {
        return ItemDetailViewController(item: item)
    }
    
    //MARK: - AuthModuleFactory:
    func makeLoginOutput() -> LoginHandler {
        return LoginViewController()
    }
    
    func makeSignUpOutput() -> SignUpHandler {
        return SignUpViewController()
    }
    
    //MARK: - OnboardingModuleFactory:
    func makeOnboardingOutput() -> OnboardingHandler {
        return OnboardingViewController()
    }
    
    //MARK: - SettingsModuleFactory:
    func makeSettingsOutput() -> SettingsHandler {
        return SettingsViewController()
    }
    
}
