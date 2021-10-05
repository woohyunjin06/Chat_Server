//
//  File.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

import NIO

protocol UseCase {
    associatedtype Request
    associatedtype Response
   
    func execute(request: Request) throws -> EventLoopFuture<Response>
}
