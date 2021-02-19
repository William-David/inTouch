//
//  Avatar.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct Avatar: View {
    
    var image: String
    var avatarSize: CGFloat
    var firstInitial: String.SubSequence?
    var lastInitial: String.SubSequence?
    
    var body: some View {
        
        Image(image)
            //.resizable()
            .frame(width: avatarSize, height: avatarSize)
            .scaledToFit()
            .overlay(
                Text(firstInitial! + lastInitial!)
                    .font(.system(size: 25, weight: .light, design: .serif))
                    .foregroundColor(Color("Background"))
                    .padding(.top, 55)
            )
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar(image: "man1", avatarSize: 50)
    }
}
