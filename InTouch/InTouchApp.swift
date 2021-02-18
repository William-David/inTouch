//
//  InTouchApp.swift
//  InTouch
//
//  Created by William Lowry on 2/11/21.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        PrefaceView()
    }
}

struct InTouchApp: App {
    var body: some Scene { WindowGroup { RootView() } }
}
