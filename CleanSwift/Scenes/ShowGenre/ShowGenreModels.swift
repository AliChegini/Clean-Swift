//
//  ShowGenreModel.swift
//  CleanSwift
//
//  Created by Ehsan on 28/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation

enum ShowGenreModels {
    
    struct Request {
        let genre: Genre?
    }
    
    struct Response {
        let genre: Genre?
    }
    
    struct ViewModel {
        let name: String
        let id: String
    }
}
