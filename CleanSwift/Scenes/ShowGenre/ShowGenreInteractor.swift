//
//  ShowGenreInteractor.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

protocol ShowGenreBusinessLogic {
    func fetchGenre(with request: ShowGenreModels.Request)
}

protocol ShowGenreDataStore {
    var genre: Genre? { get }
}


class ShowGenreInteractor: ShowGenreBusinessLogic {
    
    private let presenter: ShowGenrePresentable
    
    init(presenter: ShowGenrePresentable) {
        self.presenter = presenter
    }
    
    func fetchGenre(with request: ShowGenreModels.Request) {
        presenter.displayGenre(for: ShowGenreModels.Response(genre: request.genre))
    }
    
    
}
