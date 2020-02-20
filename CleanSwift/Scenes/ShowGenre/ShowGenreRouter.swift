//
//  ShowGenreRouter.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

protocol ShowGenreRoutable {
    
}


class ShowGenreRouter: ShowGenreRoutable, ShowGenreDataStore {
    
    weak var viewController: UIViewController?
    
    var genre: Genre?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }
    
}
