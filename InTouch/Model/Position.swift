//
//  ContentView.swift
//  Circle Movement
//
//  Created by William Lowry on 2/19/21.
//

import Foundation
import SwiftUI

class Position {

    let time: Double
    let timeLeft: Double
    let totalAvatars: Int = avatars.count
    var index: Int
    let radius: Double = 170 // Temp placeholder values
    var singleDegree = 360 / Double(avatars.count)
    
    init(person: Person) {
        self.index = person.id
        self.time = person.time
        self.timeLeft = person.timeLeft
    }
    
    func getDegrees() -> Double {
        return self.singleDegree
    }
    
    func setDegrees(deg: Double) -> Double {
        self.singleDegree += deg
        return singleDegree
    }

    func setPosition(degree: Double) -> (Double, Double) {

        singleDegree *= Double(index)
        var xIncrement = cos((singleDegree * .pi) / 180)
        var yIncrement = sin((singleDegree * .pi) / 180)
        xIncrement *= (radius * (timeLeft / time))
        yIncrement *= (radius * (timeLeft / time))
        
        return (xIncrement, yIncrement)
    }
}

struct PositionView: View {
    
    var body: some View {
        ZStack {
            ForEach(avatars) { singlePerson in
                // Create position based off person
                let pos = Position(person: singlePerson)
                // Retrieve the new position based off the new degrees
                let (x, y) = pos.setPosition(degree: pos.getDegrees())

                Avatar(person: singlePerson, size: 150)
                    .offset(x: CGFloat(x), y: CGFloat(y))

            }
        }
    }
}

struct PositionView_Previews: PreviewProvider {
    static var previews: some View {
        PositionView()
    }
}
