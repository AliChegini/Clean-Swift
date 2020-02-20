//
//  ShowGenrePresenter.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


protocol ShowGenrePresentable {
    func displayGenre(for response: ShowGenreModels.Response)
}


class ShowGenrePresenter: ShowGenrePresentable {
    
    private weak var viewController: ShowGenreDisplayable?
    
    init(viewController: ShowGenreDisplayable) {
        self.viewController = viewController
    }
    
    
    func displayGenre(for response: ShowGenreModels.Response) {
        guard let name = response.genre?.name else {
            return
        }
        guard let id = response.genre?.id else {
            return
        }
        
        let viewModel = ShowGenreModels.ViewModel(name: name, id: "\(id)")
        viewController?.displayGenre(with: viewModel)
    }
    
    
}
