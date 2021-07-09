//
//  AppDelegate.swift
//  Coordinator
//
//  Created by Артём Устинов on 05.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //MARK: - Public properties:
    var window: UIWindow?
    
    //MARK: - Private properties:
    private var rootViewController = UINavigationController()
    private var appCoordinator: AppCoordinator?
    
    //MARK: - AppDelegate:
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = rootViewController
        
        appCoordinator = self.createAppCoordinator()
        appCoordinator?.start()
        
        self.window = window
        window.makeKeyAndVisible()
        return true
    }
    
    //MARK: - Private methods:
    private func createAppCoordinator() -> AppCoordinator {
        let router = Router(rootViewController: self.rootViewController)
        let coordinatorFactory: CoordinatorFactoryInterface = CoordinatorFactory()
        return AppCoordinator(router: router,
                              coordinatorFactory: coordinatorFactory)
    }
    
}

