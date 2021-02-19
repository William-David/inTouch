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
    var firstName: String
    var lastName: String
    // var frequency: Int = Frequency of Reaching out
    // var timeHorizon: Int = Days until "out of touch"
    // var currentDistance: Float = timeHorizon/fequency
    
    var imageName: String
    private var image: Image {
        Image(imageName)
    }
}
