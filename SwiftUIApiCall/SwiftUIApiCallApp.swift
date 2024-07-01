//
//  SwiftUIApiCallApp.swift
//  SwiftUIApiCall
//
//  Created by Şuayip Işık on 1.07.2024.
//

import SwiftUI

@main
struct SwiftUIApiCallApp: App {
    @StateObject var userModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userModel)
        }
    }
}
