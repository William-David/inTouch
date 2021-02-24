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
    let totalAvatars: Double = 5
    // ISSUE: all indexes are the same due to multiplePeople.count
    var index: Int
    
    let radius: Double = 170 // Temp placeholder values
    var singleDegree: Double = 360 / 5 // will have to change # of total avatars
    
    init(person: Person, index: Int) {
        self.index = person.id
        self.time = person.time
        self.timeLeft = person.timeLeft
        //self.totalAvatars = totalAvatars // passing in total avatars will be the way
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
        var xIncrement = cos((singleDegree * .pi) / 180)// * (radius * (timeLeft / time)))
        var yIncrement = sin((singleDegree * .pi) / 180)// * (radius * (timeLeft / time)))
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
                let pos = Position(person: singlePerson, index: avatars.count)
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
