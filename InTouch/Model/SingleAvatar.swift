//
//  SingleAvatar.swift
//  InTouch
//
//  Created by William Lowry on 2/16/21.
//

import Foundation
import SwiftUI

struct SingleAvatar: Hashable, Codable, Identifiable {
    
    var id: Int
    var title: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

}
