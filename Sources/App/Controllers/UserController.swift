//
//  File.swift
//  
//
//  Created by 현진 on 2021/10/03.
//

import Foundation

import Vapor
import Fluent

struct UserController: RouteCollection {
    
    private let findUserUseCase
    
    func boot(routes: RoutesBuilder) throws {
        let users = routes.grouped("users")
        
        users.group(":userID") { user in
            user.get(use: find)
        }
    }
    
    func find(req: Request) throws -> EventLoopFuture<User> {
        
    }
}

//struct TodoController: RouteCollection {
//    func boot(routes: RoutesBuilder) throws {
//        let todos = routes.grouped("todos")
//        todos.get(use: index)
//        todos.post(use: create)
//        todos.group(":todoID") { todo in
//            todo.delete(use: delete)
//        }
////        req
//    }
//
//    func index(req: Request) throws -> EventLoopFuture<[Todo]> {
////        req.application.reposi
//        return Todo.query(on: req.db).all()
//    }
//
//    func create(req: Request) throws -> EventLoopFuture<Todo> {
//        let todo = try req.content.decode(Todo.self)
//        return todo.save(on: req.db).map { todo }
//    }
//
//    func delete(req: Request) throws -> EventLoopFuture<HTTPStatus> {
//        return Todo.find(req.parameters.get("todoID"), on: req.db)
//            .unwrap(or: Abort(.notFound))
//            .flatMap { $0.delete(on: req.db) }
//            .transform(to: .ok)
//    }
//}
