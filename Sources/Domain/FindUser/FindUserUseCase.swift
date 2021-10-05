//
//  FindUserUseCase.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

import Data
import Entity
import NIO

public struct FindUserUseCase: UseCase {
    
    private let userRepository: UserRepository
    init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    public func execute(request: FindUserRequest) throws -> EventLoopFuture<FindUserResponse> {
        userRepository.user(id: request.id)
            .unwrap(or: DomainError.notFound("User with id: \(request.id) is not found."))
            .mapEntity()
    }
    
}
