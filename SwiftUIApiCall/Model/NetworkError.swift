//
//  NetworkError.swift
//  SwiftUIApiCall
//
//  Created by Şuayip Işık on 1.07.2024.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}
