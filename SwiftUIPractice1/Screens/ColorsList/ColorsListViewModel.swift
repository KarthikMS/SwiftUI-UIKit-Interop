//
//  ColorsListViewModel.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

struct ColorViewModel {
    let name: String
    let color: UIColor
}

final class ColorsListViewModel {
    // MARK: - Architecture Components
    var router: ColorsListRouter?
    
    // MARK: - Properties
    var colors = [
        ColorViewModel(name: "Red", color: .red),
        ColorViewModel(name: "Blue", color: .blue),
        ColorViewModel(name: "Green", color: .green)
    ]
}

// MARK: - View > ViewModel
extension ColorsListViewModel {
    func didSelectColor(at index: Int) {
        router?.navigateToColorDetailView(viewModel: colors[index])
    }
}
