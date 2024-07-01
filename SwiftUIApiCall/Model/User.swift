//
//  User.swift
//  SwiftUIApiCall
//
//  Created by Şuayip Işık on 2.07.2024.
//

import Foundation

struct User: Identifiable, Codable {
    let value: String
    let icon_url: String
    let categories: [String]
    let created_at: String
    let id: String
    let updated_at: String
    let url: String
}

extension User {
    static var MOCK_USER = User(value: "", icon_url: "", categories: [""], created_at: "", id: "", updated_at: "", url: "")
}
