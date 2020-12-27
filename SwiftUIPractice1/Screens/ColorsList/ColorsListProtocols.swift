//
//  ColorsListProtocols.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

protocol ColorsListRouter {
    var view: Any { get set }
    
    func navigateToColorDetailView(viewModel: ColorViewModel)
}
