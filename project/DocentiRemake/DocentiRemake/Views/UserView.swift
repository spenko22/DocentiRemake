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
                
            }
            .toolbar {
                Button("Done") {
                    dismiss()
                }
                    .fontWeight(.semibold)
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
    }
}
