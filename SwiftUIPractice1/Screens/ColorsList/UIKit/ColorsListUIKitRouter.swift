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
    
    func navigateToColorDetailView(colorInfo: ColorInfo) {
        let colorDetailViewController = ColorDetailScreenAssembler.createInstance(colorInfo: colorInfo) as! UIViewController
        
        viewController?.navigationController?.pushViewController(colorDetailViewController, animated: true)
    }
}
