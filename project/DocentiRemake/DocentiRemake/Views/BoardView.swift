//
//  BoardView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 24/11/22.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack {
            HStack {
                
                Button {
                    print("Curriculum Button Tapped")
                } label: {
                    Group {
                        Text("Curriculum").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()

                
                Button {
                    print("Office Hours Button Tapped")
                } label: {
                    Group {
                        Text("Office Hours").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
                Button {
                    print("Publications Button Tapped")
                } label: {
                    Group {
                        Text("Publications").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()

            } // MARK: End HStack1
            HStack {
                Button {
                    print("News & Notices Button Tapped")
                } label: {
                    Group {
                        Text("News & Notices").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
                Button {
                    print("Related Links Button Tapped")
                } label: {
                    Group {
                        Text("Related Links").font(.title2).fontWeight(.semibold)
                    }.frame(width: 220, height: 80)
                        .foregroundColor(.white)
                        .background(CustomColor.fedBlue)
                } .cornerRadius(15).padding()
                
        
            } //MARK: End HStack2
            
            
        }.padding() //MARK: End VStack
    }
    
    struct BoardView_Previews: PreviewProvider {
        static var previews: some View {
            BoardView()
        }
    }
}
