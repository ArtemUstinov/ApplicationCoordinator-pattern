//
//  Router.swift
//  Coordinator
//
//  Created by Артём Устинов on 07.07.2021.
//

import UIKit

final class Router: RouterInterface {
    
    //MARK: - Private properties:
    private weak var rootController: UINavigationController?
    
    //MARK: - Initializers:
    init(rootViewController: UINavigationController) {
        self.rootController = rootViewController
    }
    
    //MARK: - Public methods:
    func push(_ module: Presentable) {
        push(module, hideBottomBar: false)
    }
    
    func push(_ module: Presentable, hideBottomBar: Bool) {
        guard let controller = module.toPresent(),
              (controller is UINavigationController == false) else { return }
        
        controller.hidesBottomBarWhenPushed = hideBottomBar
        rootController?.pushViewController(controller, animated: true)
    }
    
    func setRootModule(_ module: Presentable) {
        setRootModule(module, hideNavBar: false)
    }
    
    func setRootModule(_ module: Presentable, hideNavBar: Bool) {
        guard let controller = module.toPresent() else { return }
        rootController?.setViewControllers([controller], animated: false)
        rootController?.setNavigationBarHidden(hideNavBar, animated: false)
    }
    
    //MARK: - Private methods:
    func toPresent() -> UIViewController? {
        return rootController
    }
    
}
