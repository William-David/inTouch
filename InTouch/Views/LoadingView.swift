//
//  LoadingView.swift
//  InTouch
//
//  Created by William Lowry on 2/15/21.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Image("inTouchTitle")
                .resizable()
                .padding()
                .scaledToFit()
                .frame(width: 350, height: 350, alignment: .leading)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
