//
//  ColorsListUIKitRouter.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorsListUIKitRouter: ColorsListRouter {
    // MARK: - Architecture Components
    weak var viewController: UIViewController?
}

// MARK: - ColorsListRouter
extension ColorsListUIKitRouter {
    var view: Any {
        get { viewController! }
        set { viewController = newValue as? UIViewController }
    }
    
    func navigateToColorDetailView(viewModel: ColorViewModel) {
        let colorDetailViewController = ColorDetailViewAssembler.createInstance(colorViewModel: viewModel) as! UIViewController
        
        viewController?.navigationController?.pushViewController(colorDetailViewController, animated: true)
    }
}
