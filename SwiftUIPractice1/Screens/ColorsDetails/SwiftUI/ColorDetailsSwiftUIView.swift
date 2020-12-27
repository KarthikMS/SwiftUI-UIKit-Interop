//
//  ColorDetailsSwiftUIView.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import SwiftUI

struct ColorDetailsSwiftUIView: View {
    @ObservedObject var viewModel: ColorDetailSwiftUIViewModel
    
    var body: some View {
        GeometryReader { geometry in
            Text(viewModel.colorInfo.name)
            .foregroundColor(.black)
            .onTapGesture {
                viewModel.textTapped()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
                .background(viewModel.backgroundColor)
        }
    }
}

struct ColorDetailsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ColorDetailSwiftUIViewModel(colorInfo: ColorInfo(name: "Red", color: .red))
        return ColorDetailsSwiftUIView(viewModel: viewModel)
    }
}
