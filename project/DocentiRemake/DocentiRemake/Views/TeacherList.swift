//
//  TeacherList.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 21/11/22.
//

import SwiftUI

struct TeacherList: View {
    var body: some View {
// NavigationView {
            
        List(teachers) { teacher in
            NavigationLink {
                TeacherDetail(teacher: teacher)
            } label: {
                TeacherRow(teacher: teacher)
            }
        }
  //   } //MARK: End NavigationView
    }
}

struct TeacherList_Previews: PreviewProvider {
    static var previews: some View {
        TeacherList()
    }
}
