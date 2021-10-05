//
//  ResponseConvertible.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

import NIO

protocol EntityConvertible {
    associatedtype Entity
    init(value: Entity)
}

extension EventLoopFuture {
    func mapEntity<EC: EntityConvertible>(_ type: EC.Type = EC.self) -> EventLoopFuture<EC> where Value == EC.Entity {
        self.map {
            return EC(value: $0)
        }
    }
}
