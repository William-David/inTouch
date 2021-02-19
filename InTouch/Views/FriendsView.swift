//
//  FriendsView.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        let transition = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        return .asymmetric(insertion: transition, removal: transition)
    }
    
    static var fade: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .opacity)
        let removal = AnyTransition.move(edge: .leading)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
}

struct FriendsView: View {
    
    @State private var showDetail = false
    
    var body: some View {
        
        ZStack {
            
            
            Circle()
                .stroke(Color("Primary"))
                .foregroundColor(Color("Background"))
                .padding(.leading)
                .padding(.trailing)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            self.showDetail.toggle()
                        }
                    }) {
                        AddFriendButton()
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                }
                Spacer()
            }
            .navigationBarHidden(true)

            Avatar(image: avatars[0].imageName, avatarSize: 50, firstInitial: avatars[0].firstName.prefix(1), lastInitial: avatars[0].lastName.prefix(1))
            
            if showDetail {
                
                Avatar(image : avatars[0].imageName, avatarSize: 50)
                    .transition(.fade)
                
                AddNewFriend()
                    .transition(.moveAndFade)
                
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
