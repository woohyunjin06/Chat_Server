//
//  File.swift
//  
//
//  Created by 현진 on 2021/10/04.
//

import Foundation

enum DomainError: LocalizedError {
    case invalid(String)
    case notFound(String)
    case somethingWrong(String)
    
    var errorDescription: String? {
        switch self {
        case let .invalid(message),
             let .notFound(message),
             let .somethingWrong(message):
            return message
        }
    }
}
