//
//  ColorDetailsViewConrtoller.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorDetailsViewController: UIViewController {
    // MARK: - Subviews
    private lazy var colorNameLabel: UILabel = {
        let colorNameLabel = UILabel()
        
        colorNameLabel.textColor = .white
        colorNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return colorNameLabel
    }()
    
    // MARK: - Properties
    let colorViewModel: ColorViewModel
    
    // MARK: - Init
    init(colorViewModel: ColorViewModel) {
        self.colorViewModel = colorViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Life Cycle
extension ColorDetailsViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = colorViewModel.color
        addSubviews()
        colorNameLabel.text = colorViewModel.name
    }
}

// MARK: - Setup
private extension ColorDetailsViewController {
    func addSubviews() {
        view.addSubview(colorNameLabel)
        NSLayoutConstraint.activate([
            colorNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colorNameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
