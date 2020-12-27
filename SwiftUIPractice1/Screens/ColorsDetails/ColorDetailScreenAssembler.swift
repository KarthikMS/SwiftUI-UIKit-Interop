//
//  ColorDetailViewAssembler.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit
import SwiftUI

final class ColorDetailScreenAssembler {
    static func createInstance(colorInfo: ColorInfo) -> Any {
        let viewController: UIViewController
        
        switch appConfig.uiRenderingFramework {
        case .uiKit:
            let viewModel = ColorDetailViewModel(colorInfo: colorInfo)
            viewController = ColorDetailsViewController(viewModel: viewModel)
            viewModel.view = viewController as? ColorDetailView
        case .swiftUI:
            let viewModel = ColorDetailSwiftUIViewModel(colorInfo: colorInfo)
            let colorDetailsView = ColorDetailsSwiftUIView(viewModel: viewModel)
            viewController = UIHostingController(rootView: colorDetailsView)
        }
        
        return viewController
    }
}
