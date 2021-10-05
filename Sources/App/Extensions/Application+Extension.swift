//
//  Application+Extension.swift
//  
//
//  Created by 현진 on 2021/10/03.
//

import Foundation

import Data
import Domain
import Vapor


// MARK: - Data Layer
extension Application {
    var userRepository: UserRepository {
        RepositoryResolver.userRepository(with: db)
    }
}

// MARK: - Domain Layer
extension Application {
    
}
