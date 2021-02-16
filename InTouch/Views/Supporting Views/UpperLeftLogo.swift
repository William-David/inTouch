//
//  UpperLeftLogo.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct UpperLeftLogo: View {
    var body: some View {
        
        VStack {
            LogoImage()
                .padding(.leading, 10)
                .padding(.top, 20)
            Spacer()
        }
    }
}

struct UpperLeftLogo_Previews: PreviewProvider {
    static var previews: some View {
        UpperLeftLogo()
    }
}
