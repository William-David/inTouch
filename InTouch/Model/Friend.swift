//
//  FriendInfo.swift
//  InTouch
//
//  Created by William Lowry on 2/14/21.
//

import Foundation
import SwiftUI

struct Friend: Hashable, Codable {
    
    let firstName: String
    let lastName: String
    let timeHorizon: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
