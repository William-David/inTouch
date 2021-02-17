//
//  AvatarRow.swift
//  InTouch
//
//  Created by William Lowry on 2/16/21.
//

import SwiftUI

struct AvatarRow: View {
    
    var avatar: SingleAvatar
    
    var body: some View {
        
        HStack {
            Image(avatar.imageName)
                .resizable()
                .frame(width: 200, height: 200)
        }
        
    }
}

struct AvatarRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            AvatarRow(avatar: avatars[0])
            AvatarRow(avatar: avatars[1])
        }
        .previewLayout(.fixed(width: 500, height: 400))
        
    }
}
