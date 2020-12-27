//
//  ColorsListViewController.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit

final class ColorsListViewController: UIViewController {
    // MARK: - Subviews
    private lazy var tableView: UITableView = {
        let tableView = UITableView()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ColorCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    // MARK: - Architecture Components
    var viewModel: ColorsListViewModel?
}

// MARK: - View Life Cycle
extension ColorsListViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - Setup
private extension ColorsListViewController {
    func addSubviews() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - UITableViewDataSource
extension ColorsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.colors.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        cell.textLabel?.text = viewModel?.colors[indexPath.row].name
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ColorsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewModel?.didSelectColor(at: indexPath.row)
    }
}
