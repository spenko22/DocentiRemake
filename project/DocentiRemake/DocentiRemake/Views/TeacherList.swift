//
//  TeacherList.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 21/11/22.
//

import SwiftUI

struct TeacherList: View {
    var body: some View {            
        List(teachers) { teacher in
            NavigationLink {
                TeacherDetail(teacher: teacher)
            } label: {
                TeacherRow(teacher: teacher)
            }
        }
    }
}

struct TeacherList_Previews: PreviewProvider {
    static var previews: some View {
        TeacherList()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
    }
}
