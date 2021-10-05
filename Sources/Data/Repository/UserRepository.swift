//
//  UserRepository.swift
//  
//
//  Created by 현진 on 2021/10/03.
//

import Foundation

import Entity
import Fluent

public protocol UserRepository {
    func user(id: UUID) -> EventLoopFuture<User?>
}

final class DefaultUserRepository: UserRepository {
    private let db: Database
    public init(db: Database) {
        self.db = db
    }
    
    public func user(id: UUID) -> EventLoopFuture<User?> {
        User.query(on: db)
            .filter(\.$id == id)
            .first()
    }
}
