//
//  ColorsListRouter.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorsListRouter {
    // MARK: - Architecture Components
    weak var viewController: UIViewController?
}

// MARK: - ViewModel > Router
extension ColorsListRouter {
    func navigateToColorDetailView(viewModel: ColorViewModel) {
        let colorDetailViewController = ColorDetailViewAssembler.createInstance(colorViewModel: viewModel) as! UIViewController
        
        viewController?.navigationController?.pushViewController(colorDetailViewController, animated: true)
    }
}
