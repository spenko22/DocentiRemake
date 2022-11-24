//
//  Data.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 20/11/22.
//

import Foundation
import SwiftUI

struct CustomColor {
    static let fedBlue = Color("fedBlue")
    // Add more colours here...
}

enum Language: String, CaseIterable, Identifiable {
    case english, italiano, napoletano
    var id: Self { self }
}

