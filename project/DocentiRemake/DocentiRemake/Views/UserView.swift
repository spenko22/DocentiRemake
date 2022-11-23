//
//  UserView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 21/11/22.
//

import SwiftUI

struct UserView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .foregroundColor(Color("fedBlue"))
                        .frame(width:65.0, height:65.0)
                    
                    Text("")
                    
                    VStack(alignment: .leading) {
                        Text("Name Surname")
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("user@studenti.unina.it")
                            .foregroundColor(.gray)
                    }//MARK: End VStack
                    Spacer()
                } //MARK: End HStack
                .padding()
                Divider()
                VStack {
                    
                    Text("SPID/CIE Access")
                        .frame(width: 150, height: 100)
                    
                }
                
            } //MARK: End ScrollView
            .toolbar {
                Button("Done") {
                    dismiss()
                }
                    .fontWeight(.medium)
            }
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
        } // End NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
        
    } // end UserView body
} // End UserView

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
    }
}
