//
//  Avatar.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct Avatar: View {
    
    var image: String
    
    
    var body: some View {
        
        Image(image)
            .frame(width: 50, height: 50, alignment: .center)
            .scaledToFit()
            .overlay(
                Text(avatars[0].firstName.prefix(1) + avatars[0].lastName.prefix(1))
                    .font(.system(size: 25, weight: .light, design: .serif))
                    .foregroundColor(Color("Background"))
                    .padding(.top, 55)
            )
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(image: "man1")
    }
}
