//
//  ColorDetailViewAssembler.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

final class ColorDetailViewAssembler {
    static func createInstance(colorViewModel: ColorViewModel) -> Any {
        let viewController = ColorDetailsViewController(colorViewModel: colorViewModel)
        return viewController
    }
}
