//
//  ColorDetailViewModel.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import Foundation

class ColorDetailViewModel {
    // MARK: - Architecture Components
    weak var view: ColorDetailView?
    
    // MARK: - Properties
    let colorInfo: ColorInfo
    
    // MARK: - Init
    init(colorInfo: ColorInfo) {
        self.colorInfo = colorInfo
    }
}

// MARK: View > ViewModel
extension ColorDetailViewModel {
    @objc func textTapped() {
        view?.backgroundColor = .magenta
    }
}
