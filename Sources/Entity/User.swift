//
//  User.swift
//  
//
//  Created by 현진 on 2021/10/03.
//

import Foundation

import FluentKit

final public class User: Model {
    public static var schema: String = "user"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "username")
    public var username: String
    
    @Field(key: "password")
    var password: String
    
    @Field(key: "nickname")
    public var nickname: String
    
    @Timestamp(key: "created_at", on: .create)
    public var createdAt: Date?
    
    @Timestamp(key: "updated_at", on: .update)
    public var updatedAt: Date?
    
    @Timestamp(key: "last_active_at", on: .none)
    public var lastActiveAt: Date?
    
    public init() { }
}
