//
//  MovieNightErrors.swift
//  CleanSwift
//
//  Created by Ehsan on 24/09/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation


enum MovieNightErrors: Error {
    case couldNotConstructURL
    case requestFailed
    case responseUnsuccessful
    case couldNotParseJSON
}
