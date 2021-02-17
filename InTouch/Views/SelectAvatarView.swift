//
//  SelectAvatarView.swift
//  InTouch
//
//  Created by William Lowry on 2/16/21.
//

import SwiftUI

struct SelectAvatarView: View {
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                        HStack {
                            Spacer()
                            Text("Select an Avatar")
                                .font(.system(size: 40, weight: .light, design: .serif))
                                .foregroundColor(Color("Primary"))
                                .shadow(radius: 10)
                            Spacer()
                        }
                }
                Spacer()
                AvatarList()
            }
            NavigationLink(
                destination: AddNewFriend()) {
                VStack {
                    Spacer()
                    HStack {
                        Text("Back")
                            .font(.system(size: 20, weight: .light, design: .serif))
                            .foregroundColor(Color("Primary"))
                            .shadow(radius: 10)
                        Spacer()
                    }
                    .padding(.leading, 20)
                }
                
            }
        }
        .navigationBarHidden(true)

    }
    

    
}

struct SelectAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        SelectAvatarView()
    }
}
