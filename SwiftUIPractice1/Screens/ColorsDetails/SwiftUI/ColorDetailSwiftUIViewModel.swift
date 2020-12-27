//
//  ColorDetailSwiftUIViewModel.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import SwiftUI

final class ColorDetailSwiftUIViewModel: ColorDetailViewModel, ObservableObject {
    @Published var backgroundColor: Color
    
    override init(colorInfo: ColorInfo) {
        backgroundColor = Color(colorInfo.color)
        super.init(colorInfo: colorInfo)
    }
    
    override func textTapped() {
        backgroundColor = Color(.brown)
    }
}
