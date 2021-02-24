//
//  Avatar.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct Me: View {
    
    var person: Person
    var image: String
    var avatarSize: CGFloat = 75
    
    init(person: Person, size: CGFloat) {
        self.person = person
        self.image = person.imageName
        self.avatarSize = size
    }
    
    var body: some View {
        
        Image(image)
            .resizable()
            .frame(width: avatarSize, height: avatarSize)
            .scaledToFit()
    }
}

struct Me_Previews: PreviewProvider {
    static var previews: some View {
        Me(person: avatars[0], size: 150)
    }
}
