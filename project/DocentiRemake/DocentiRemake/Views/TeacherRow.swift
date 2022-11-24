////
////  TeacherRow.swift
////  DocentiRemake
////
////  Created by Pasquale Viscido on 21/11/22.
////

import SwiftUI

struct TeacherRow: View {
    var teacher: Teacher
    
    var body: some View {
        HStack {
            
            teacher.image
                           .resizable()
                           .frame(width: 80, height: 80)
                           .clipShape(Circle())
            Text(" ")
            
            VStack {
                Text(teacher.name)
                    .foregroundColor(CustomColor.fedBlue)
                    .font(.title)
            }
            
            Spacer()
        } //MARK: End HStack
    } // End Body
} // End TeacherRow

struct TeacherRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeacherRow(teacher: teachers[0])
            TeacherRow(teacher: teachers[1])
        } //MARK: End Teachers Group
        .previewLayout(.fixed(width: 300, height: 70))
        .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
        .previewDisplayName("iPad Pro 11\"")
    }
}

