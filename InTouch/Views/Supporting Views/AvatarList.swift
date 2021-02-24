//
//  AvatarList.swift
//  InTouch
//
//  Created by William Lowry on 2/16/21.
//

import SwiftUI

struct AvatarList: View {
    var body: some View {
        
        List(avatars, id: \.id) { Person in
            Spacer()
            AvatarRow(avatar: Person)
            Spacer()
        }
        
    }
}

struct AvatarList_Previews: PreviewProvider {
    static var previews: some View {
        AvatarList()
    }
}
