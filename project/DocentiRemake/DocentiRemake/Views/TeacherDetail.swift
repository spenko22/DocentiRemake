//
//  TeacherDetail.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 21/11/22.
//

import SwiftUI

struct TeacherDetail: View {
    var teacher: Teacher
    var body: some View {
        ScrollView {
            
            HStack {
                Spacer()
                CircleImage(image: teacher.image)
                
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(teacher.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(CustomColor.fedBlue)
                    
                    HStack {
                        Text(teacher.department)
                        Spacer()
                        Text(teacher.location)
                    }
                    
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                 Divider()
                        .padding(.top)
                    Text("Contact Info")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("")
                    
                    HStack {
                            Text("📧    \(teacher.mail)")
                        
                        Spacer()
                        Divider()
                        Spacer()
                        
                        HStack {
                            Text ("📞   ")
                            VStack {
                                Text(teacher.phone)
                                Text("")
                                Text(teacher.phone1)
                                Text("")
                                Text(teacher.phone2)
                            }
                        }
                    }
                    .foregroundColor(.blue)
                }
                .padding()
            } //MARK: End Main HStack
            Divider()
            
            SegmentedControlView().padding()
    
                
            
               } //MARK: End ScrollView
        .navigationTitle("Prof. \(teacher.onlysurname)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TeacherDetail_Previews: PreviewProvider {
    static var previews: some View {
        TeacherDetail(teacher: teachers[0])
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
    }
}
