//
//  NewFriend.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct AddNewFriend: View {
    
    @State private var friendName: String = ""
    @State private var nameEditing = false
    
    @State private var showDetail = false
    
    var body: some View {
        
        
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .shadow(radius: 10)
                .frame(width: 360, height: 510, alignment: .center)
                .foregroundColor(Color("Tertiary"))
                .opacity(0.5)
            
            RoundedRectangle(cornerRadius: 30)
                .shadow(radius: 10)
                .frame(width: 350, height: 500, alignment: .center)
                .foregroundColor(Color("Background"))
            
            HStack {
                VStack {
                    Text("Who's Next?")
                        .font(.system(size: 20, weight: .light, design: .serif))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, -15)
                    
                    TextField(
                        "Name:",
                        text: $friendName
                    ) { nameEditing in
                        self.nameEditing = nameEditing
                    }
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.system(size: 20, weight: .light, design: .serif))
                }
                .padding(.leading, 60)
                
                VStack {
                    Spacer()
                    
                    NavigationLink(destination: SelectAvatarView()) {
                        
                        ZStack {
                            Image("man1")
                                .scaledToFit()
                        }
                    }
                    .padding()
                    .padding(.top, 20)
                    
                    Spacer()
                    
                    NavigationLink(destination: FriendsView()) {
                        Text("Add Friend")
                            .foregroundColor(Color("Tertiary"))
                            .font(.system(size: 25, weight: .light, design: .serif))
                    }
                    
                    Spacer()
                    
                }
                .padding(.vertical, 200)
                .padding(.trailing, 60)
            }
        }
        .navigationBarHidden(true)
        
        if showDetail {
            SelectAvatarView()
        }
    }
}

struct AddNewFriend_Previews: PreviewProvider {
    static var previews: some View {
        AddNewFriend()
    }
}
