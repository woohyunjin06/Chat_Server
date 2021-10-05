//
//  File.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

import Entity

public struct FindUserResponse: EntityConvertible {
    let user: User
    
    init(value: User) {
        self.user = value
    }
}
