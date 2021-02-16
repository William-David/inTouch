//
//  LogoImage.swift
//  InTouch
//
//  Created by William Lowry on 2/14/21.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        
        HStack {
            Image("inTouchLogo")
                .resizable()
                .overlay(Circle()
                            .stroke(Color("Tertiary"), lineWidth: 4)
                            .shadow(radius: 5))
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .padding(.leading)
            Spacer()
        }
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
