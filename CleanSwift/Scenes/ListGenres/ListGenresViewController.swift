//
//  ListGenresViewController.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

protocol ListGenresDisplayable: class {
    func displayFetchedGenres(with viewModel: ListGenresModels.ViewModel)
}

class ListGenresViewController: UITableViewController, ListGenresDisplayable {
    
    let listGenresUIElements = ListGenresUIs()
    
    lazy var interactor: ListGenresBusinessLogic = ListGenresInteractor(
        presenter: ListGenresPresenter(viewController: self),
        worker: JSONParserWorker())
    
    lazy var router = ListGenresRouter(viewController: self)
    var viewModel: ListGenresModels.ViewModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listGenresUIElements.setupViews(in: view)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        navigationItem.title = "Genres"
        
        interactor.fetchGenres(with: ListGenresModels.FetchRequest())
    }
    

    func displayFetchedGenres(with viewModel: ListGenresModels.ViewModel) {
        self.viewModel = viewModel
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
}



extension ListGenresViewController {
    // tableview delegates
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = viewModel?.genres.count else {
            return 0
        }
        return count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = viewModel?.genres[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let model = viewModel?.genres[indexPath.row] else {
            return
        }
    
        router.showGenres(for: model)
    }
}
