//
//  ItemsListCoordinator.swift
//  Coordinator
//
//  Created by Артём Устинов on 06.07.2021.
//

import Foundation

final class ItemsListCoordinator: BaseCoordinator {
    
    //MARK: - Private properties:
    private var coordinatorFactory: CoordinatorFactoryInterface?
    private let moduleFactory: ItemsListModuleFactory
    private let router: RouterInterface
    
    //MARK: - Initializers:
    init(router: RouterInterface,
         moduleFactory: ItemsListModuleFactory,
         coordinatorFactory: CoordinatorFactoryInterface? = nil) {
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory
        self.router = router
    }
    
    //MARK: - Override methods:
    override func start() {
        showItemsList()
    }
    
    //MARK: - Private methods:
    private func showItemsList() {
        var itemsFlowOutput = moduleFactory.makeItemsOutput()
        itemsFlowOutput.onItemSelect = { [weak self] (item) in
            self?.showItemDetail(item)
        }
        router.setRootModule(itemsFlowOutput)
    }
    
    private func showItemDetail(_ item: Item) {
        let itemDetailFlowOutput = moduleFactory.makeItemDetailOutput(item)
        router.push(itemDetailFlowOutput,
                    hideBottomBar: true)
    }
    
}
