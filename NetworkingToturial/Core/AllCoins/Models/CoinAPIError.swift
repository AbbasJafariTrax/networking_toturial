//
//  CoinAPIError.swift
//  NetworkingToturial
//
//  Created by Abbas Jafari on 21/06/1403 AP.
//

import Foundation

enum CoinAPIError: Error {
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unknownError(error: Error)
    
    var customDescripiton: String {
        switch self {
        case .invalidData: return "Invalid Data"
        case .jsonParsingFailure: return "Failed to parse JSON"
        case let .requestFailed(description): return "Request failed: \(description)"
        case let .invalidStatusCode(statusCode): return "Invalid status code: \(statusCode)"
        case let .unknownError(error): return "An unknown error occured: \(error.localizedDescription)"
        }
    }
}
