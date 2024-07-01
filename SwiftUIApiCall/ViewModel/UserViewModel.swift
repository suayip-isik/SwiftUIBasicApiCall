//
//  UserViewModel.swift
//  SwiftUIApiCall
//
//  Created by Şuayip Işık on 2.07.2024.
//

import Foundation
import SwiftUI

@MainActor
class UserViewModel: ObservableObject {
    @Published var currentUser: User?
    
    init() {
        Task {
            await fetchUser()
        }
    }
    
    func fetchUser() async {
        do {
            let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.chucknorris.io/jokes/random")!)
            if let decodedResponse = try? JSONDecoder().decode(User.self, from: data) {
                self.currentUser = decodedResponse
            }
            
        } catch {
            print("Error fetching data: \(error)")
        }
    }
}
