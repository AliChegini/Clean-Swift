//
//  ListGenresRouter.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

protocol ListGenresRoutable {
    func showGenres(for model: ListGenresModels.GenresViewModel)
}


class ListGenresRouter: ListGenresRoutable, ListGenresDataStore {
    
    weak var viewController: UIViewController?
    
    // this var is only used when other scenes want to pass data to this scene
    var genres: [Genre]?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
    func showGenres(for model: ListGenresModels.GenresViewModel) {
        let showGenreVC = ShowGenreViewController()
        showGenreVC.modalPresentationStyle = .overFullScreen
        
        // passing data to next use case
        showGenreVC.router.genre = Genre(id: model.id, name: model.name)
        viewController?.present(showGenreVC, animated: true, completion: nil)
    }
}
