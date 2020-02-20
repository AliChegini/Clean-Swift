//
//  ListGenresUIs.swift
//  CleanSwift
//
//  Created by Ehsan on 30/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class ListGenresUIs: UIView {

    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    
    
    func setupViews(in view: UIView) {
        view.addSubview(tableView)
        
        
        NSLayoutConstraint.activate([
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
            ])
    }

}
