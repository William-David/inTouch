//
//  AddFriendButton.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct AddFriendButton: View {
    var body: some View {
        Circle()
            .frame(width: 40, height: 40, alignment: .center)
            .foregroundColor(Color("Secondary Variant"))
            .shadow(radius: 20)
            .overlay(
                Text("+")
                    .font(.system(size: 30))
                    .foregroundColor(Color("Background")))
    }
}

struct AddFriendButton_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendButton()
    }
}
