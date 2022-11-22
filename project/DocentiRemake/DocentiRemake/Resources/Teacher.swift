//
//  Teacher.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 21/11/22.
//

import Foundation
import SwiftUI

struct Teacher: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var onlysurname: String
    var department: String
    var phone: String
    var phone1: String
    var phone2: String
    var location: String
    var mail: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
