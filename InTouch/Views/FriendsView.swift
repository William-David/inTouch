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

            Avatar()
            
            if showDetail {
                
                Avatar()
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
