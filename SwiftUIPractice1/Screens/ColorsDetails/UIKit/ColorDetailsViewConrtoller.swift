//
//  ColorDetailsViewConrtoller.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorDetailsViewController: UIViewController, ColorDetailView {
    // MARK: - Subviews
    private lazy var colorNameLabel: UILabel = {
        let colorNameLabel = UILabel()
        
        colorNameLabel.textColor = .white
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(textTapped))
        colorNameLabel.addGestureRecognizer(tapGesture)
        colorNameLabel.isUserInteractionEnabled = true
        
        colorNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return colorNameLabel
    }()
    
    // MARK: - Properties
    let viewModel: ColorDetailViewModel
    
    // MARK: - Init
    init(viewModel: ColorDetailViewModel) {
        self.viewModel = viewModel
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
        
        view.backgroundColor = viewModel.colorInfo.color
        addSubviews()
        colorNameLabel.text = viewModel.colorInfo.name
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

// MARK: - Actions
private extension ColorDetailsViewController {
    @objc func textTapped() {
        viewModel.textTapped()
    }
}

// MARK: - ColorDetailView
extension ColorDetailsViewController {
    var backgroundColor: UIColor? {
        get { view.backgroundColor }
        set { view.backgroundColor = newValue }
    }
}
