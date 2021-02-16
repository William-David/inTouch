//
//  LogoTitle.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

// PROBABlY DELETE

import SwiftUI

struct LogoTitle: View {
    var body: some View {
        
        ZStack {
            Image("inTouchTitle")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100, alignment: .center)
                .padding(.leading)
            Circle()
                .frame(width: 130, height: 60, alignment: .center)
                .border(Color("Secondary"), width: 2)
                .foregroundColor(Color(.clear))
                .cornerRadius(10)

        }
    }
}

struct LogoTitle_Previews: PreviewProvider {
    static var previews: some View {
        LogoTitle()
    }
}

