//
//  DidacticsView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 24/11/22.
//

import SwiftUI

struct DidacticsView: View {
    var body: some View {
        VStack {
            HStack {
                
                Button {
                    print("Subscribe Button Tapped")
                } label: {
                    Group {
                        Text("Subscribe").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()

                
                Button {
                    print("Exams Button Tapped")
                } label: {
                    Group {
                        Text("Exam List").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
                Button {
                    print("Class Schedules Button Tapped")
                } label: {
                    Group {
                        Text("Class Schedules").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()

            } // MARK: End HStack1
            HStack {
                Button {
                    print("2022-2023 Programs Button Tapped")
                } label: {
                    Group {
                        Text("2022-23 Programs").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
                Button {
                    print("Research Button Tapped")
                } label: {
                    Group {
                        Text("Research").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
                Button {
                    print("Study Resources Button Tapped")
                } label: {
                    Group {
                        Text("Study Resources").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
            } //MARK: End HStack2
            
            
        }.padding() //MARK: End VStack
    }
}

struct DidacticsView_Previews: PreviewProvider {
    static var previews: some View {
        DidacticsView()
    }
}
