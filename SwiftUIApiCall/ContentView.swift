//
//  ContentView.swift
//  SwiftUIApiCall
//
//  Created by Şuayip Işık on 1.07.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userModel: UserViewModel
    
    var body: some View {
        VStack {
            
            if let user = userModel.currentUser {
                
                AsyncImage(url: URL(string: user.icon_url)) { image in
                    image
                } placeholder: {
                    ProgressView()
                }
                Text(user.value)
                Text("categories: \(user.categories)")
                Text("created_at: \(user.created_at)")
                Text("id: \(user.id)")
                Text("updated_at: \(user.updated_at)")
                Text("url: \(user.url)")
                Button {
                    Task {
                        await userModel.fetchUser()
                    }
                } label: {
                    Text("Fetch Joke")
                }
            }
            
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
