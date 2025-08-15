//
//  LoginView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 09/08/25.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    var body: some View {
        VStack{
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            TextField("Enter the username", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Login") {
                if userName == "Chris" {
                    isLoggedIn = true
                } else {
                    isLoggedIn = false
                }
            }
        }
    }
}

//#Preview {
//    LoginView()
//}
