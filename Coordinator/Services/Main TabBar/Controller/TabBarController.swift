//
//  TabBarController.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import UIKit

final class TabBarController: UITabBarController, UITabBarControllerDelegate, TabBarControllerInterface {
    
    //MARK: - Public properties:
    var onItemFlowSelect: ((UINavigationController) -> Void)?
    var onSettingsFlowSelect: ((UINavigationController) -> Void)?
    var onViewDidLoad: ((UINavigationController) -> Void)?
    
    //MARK: - Override methods:
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBar()
        //        setOnViewDidLoadCompletion()
    }
    
    //MARK: - Private methods:
    private func setupTabBar() {
        viewControllers = [
            generateViewController(image: .checkmark, title: "Items"),
            generateViewController(image: .actions, title: "Settings")
        ]
        setOnViewDidLoadCompletion()
    }
    
    private func setOnViewDidLoadCompletion() {
        guard let controller = viewControllers?.first as? UINavigationController else { return }
        DispatchQueue.main.async {
            self.onViewDidLoad?(controller)
        }
    }
    
    private func generateViewController(
        image: UIImage? = nil,
        title: String? = nil
    ) -> UINavigationController {
        let viewController = UINavigationController()
        viewController.tabBarItem.image = image
        viewController.tabBarItem.title = title
        return viewController
    }
    
    //MARK: - UITabBarControllerDelegate:
    func tabBarController(_ tabBarController: UITabBarController,
                          didSelect viewController: UIViewController) {
        guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
        if selectedIndex == 0 {
            onItemFlowSelect?(controller)
        } else {
            onSettingsFlowSelect?(controller)
        }
    }
    
}
