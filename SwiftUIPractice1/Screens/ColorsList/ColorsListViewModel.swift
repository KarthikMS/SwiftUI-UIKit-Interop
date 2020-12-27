//
//  ColorsListViewModel.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

struct ColorInfo {
    let name: String
    let color: UIColor
}

final class ColorsListViewModel {
    // MARK: - Architecture Components
    var router: ColorsListRouter?
    
    // MARK: - Properties
    var colors = [
        ColorInfo(name: "Red", color: .red),
        ColorInfo(name: "Blue", color: .blue),
        ColorInfo(name: "Green", color: .green)
    ]
}

// MARK: - View > ViewModel
extension ColorsListViewModel {
    func didSelectColor(at index: Int) {
        router?.navigateToColorDetailView(colorInfo: colors[index])
    }
}
