//
//  File.swift
//  
//
//  Created by 현진 on 2021/10/03.
//

import Foundation

import Fluent

public class RepositoryResolver {
    public static func userRepository(with db: Database) -> UserRepository {
        DefaultUserRepository(db: db)
    }
    
}

