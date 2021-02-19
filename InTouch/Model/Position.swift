//
//  Position.swift
//  InTouch
//
//  Created by William Lowry on 2/19/21.
//

import Foundation

class Position {
    // var numberAvatars = #avatars
    // float angle = 360 / numberAvatars
    //
    
    var singleAvatar: SingleAvatar
    let degreesCircle: Double = 360
    
    init(singleAvatar: SingleAvatar) {
        self.singleAvatar = singleAvatar
    }
    
    func setPosition() -> (Double, Double) {
        
        var x: Double = 0
        var y: Double = 0
        
        return (x, y)
    }
}
