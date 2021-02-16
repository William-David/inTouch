//
//  FriendsView.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                NavigationLink(destination: LoadingView()) {
                    AddFriendButton()
                    
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
