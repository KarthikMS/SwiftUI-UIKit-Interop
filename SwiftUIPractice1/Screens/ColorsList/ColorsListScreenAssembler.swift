//
//  ColorsListScreenAssembler.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorsListScreenAssembler {
    static func createInstance() -> Any {
        let viewModel = ColorsListViewModel()
        
        let viewController = ColorsListViewController()
        viewController.viewModel = viewModel
        
        var router: ColorsListRouter
        router = ColorsListUIKitRouter()
        
        viewModel.router = router
        
        router.view = viewController
        
        let navController = UINavigationController(rootViewController: viewController)
        return navController
    }
}
