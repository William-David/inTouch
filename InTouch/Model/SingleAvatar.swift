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
    
    var imageName: String
    private var image: Image {
        Image(imageName)
    }
    /*
    init(id: Int = 0, title: String = "", firstName: String = "", lastName: String = "", imageName: String = "") {
        self.id = id
        self.title = title
        self.firstName = firstName
        self.lastName = lastName
        self.imageName = imageName
    }
 */
    
//    private enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case title = "title"
//        case firstName = "firstName"
//        case lastName = "lastName"
//
//        case imageName = "imageName"
//        case image
//    }
    
//    init(id: Int, title: String, firstName: String, lastName: String, imageName: String) {
//        self.id = id
//        self.title = title
//        self.firstName = firstName
//        self.lastName = lastName
//        self.imageName = imageName
//    }
    
}
/*
extension SingleAvatar {
    struct SingleAvatarKey: CodingKey {
        // Encode first name
        var firstName: String
        init?(firstName: String) {
            self.firstName = firstName
        }
        // Encode last name
        var lastName: String
        init?(lastName: String) {
            self.lastName = lastName
        }
        // Encode chosen avatar image
        var imageName: String
        init?(imageName: String) {
            self.imageName = imageName
        }

        static let firstName = SingleAvatarKey(stringValue: "points")!
        static let points = SingleAvatarKey(stringValue: "points")!
        static let points = SingleAvatarKey(stringValue: "points")!
    }
}
 */

/*
extension SingleAvatar: Encodable {
    struct AvatarKey: CodingKey {
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        
        var intValue: Int?
        init?(intValue: Int) {
            self.intValue = intValue
        }
    }
}
 */
