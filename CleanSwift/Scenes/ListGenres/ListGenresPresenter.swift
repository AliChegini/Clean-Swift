//
//  ListGenresPresenter.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//


protocol ListGenresPresentable {
    func presentFetchedGenres(for response: ListGenresModels.Response)
}


class ListGenresPresenter: ListGenresPresentable {
    
    private weak var viewController: ListGenresDisplayable?
    
    init(viewController: ListGenresDisplayable) {
        self.viewController = viewController
    }
    
    
    
    func presentFetchedGenres(for response: ListGenresModels.Response) {
        let viewModel = ListGenresModels.ViewModel(
            genres: response.allGenresRaw.genres.map {
                ListGenresModels.GenresViewModel(id: $0.id, name: $0.name)
            }
        )
        viewController?.displayFetchedGenres(with: viewModel)
    }
    

}
