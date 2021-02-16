//
//  ContentView.swift
//  InTouch
//
//  Created by William Lowry on 2/11/21.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var username: String = ""
    @State private var isEditing = false
    @State private var password: String = ""
    @State private var isEditingPassword = false
    
    var body: some View {
        
        ZStack {
            
            UpperLeftLogo()
            
            VStack {
                Spacer()
                
                HStack {
                    Text("Welcome")
                        .frame(width: 250)
                        .font(.system(size: 50, weight: .light, design: .serif))
                        .foregroundColor(Color("Primary"))
                        .shadow(radius: 10)
                    Spacer()
                }
                .padding(.top, 30)
                
                HStack {
                    Text("Sign in to continue")
                        .shadow(radius: 10)
                        .opacity(0.5)
                        .frame(width: 200)
                        .font(.system(size: 20, weight: .light, design: .serif))
                        .padding(.leading, 10)
                    Spacer()
                }
                
                Spacer()
                Spacer()
                
                VStack {
                    TextField(
                        "Username (email address)",
                        text: $username
                    ) { isEditing in
                        self.isEditing = isEditing
                    }
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal, 50)
                    .font(.system(size: 20, weight: .light, design: .serif))
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.horizontal, 50)
                    
                    TextField(
                        "Password",
                        text: $password
                    ) { isEditingPassword in
                        self.isEditingPassword = isEditingPassword
                    }
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal, 50)
                    .font(.system(size: 20, weight: .light, design: .serif))
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .padding(.horizontal, 50)
                }
                
                NavigationLink(destination: FriendsView()) {
                    HStack {
                        Text("GET STARTED")
                            .foregroundColor(Color.white)
                            .font(.system(size: 25, weight: .light, design: .serif))
                    }
                    .padding(.horizontal, 70.0)
                    .padding(.vertical, 10.0)
                    .overlay(
                        Rectangle()
                            .stroke(lineWidth: 0)
                    )
                }
                .background(Color("Primary"))
                .padding(.top, 90)
                
                // Instead of button, use nav link
                Button(action: {
                    print("Button action 2")
                }) {
                    Text("LOGIN")
                        .foregroundColor(Color("Primary"))
                        .font(.system(size: 25, weight: .light, design: .serif))
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 70)
        }
        .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
