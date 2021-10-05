//
//  CreateUserMigration.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

import Fluent

public struct CreateUserMigration: Migration {
    public init() {}
    
    public func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("user")
            .id()
            .field("username", .string, .required)
            .field("password", .string, .required)
            .field("nickname", .string, .required)
            .field("created_at", .datetime)
            .field("updated_at", .datetime)
            .field("last_active_at", .datetime)
            .unique(on: "username")
            .create()
    }

    public func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("user").delete()
    }
}
