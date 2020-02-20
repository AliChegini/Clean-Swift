//
//  ListGenresModels.swift
//  CleanSwift
//
//  Created by Ehsan on 23/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//


enum ListGenresModels {
    struct FetchRequest {
        
    }
    
    struct SearchRequest {
        
    }
    
    struct Response {
        let allGenresRaw: AllGenres
    }
    
    struct ViewModel {
        let genres: [GenresViewModel]
    }
    
    
    struct GenresViewModel {
        let id: Int
        let name: String
    }
    
    
}
