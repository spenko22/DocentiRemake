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
                    ZStack{
                        Button {
                            print("Login Button Tapped")
                        } label: {
                            Image(systemName: "person.circle.fill").resizable().foregroundColor(Color("fedBlue")).frame(width:65.0, height:65.0)
                            
                            Image(systemName: "camera.circle.fill").resizable().frame(width:20.0, height:20.0).offset(x:-24, y:-22).foregroundStyle(.blue, .white)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Name Surname").font(.title2).fontWeight(.medium)
                        Text("user@studenti.unina.it").foregroundColor(.gray)
                    }//MARK: End VStack
                    Spacer()
                    VStack {
                        
                        Button {
                            print("Login Button Tapped")
                        } label: {
                            Group {
                                Text("SPID/CIE Login").font(.title2).fontWeight(.semibold)
                            }.frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 400)
                            .foregroundColor(.white)
                            .background(.blue)
                        } .cornerRadius(15)
                        //End Button SPID & CIE
                        
                        Button {
                            print("Login Button Tapped")
                        } label: {
                            HStack {
                                Image(systemName: "envelope.fill")
                                
                              Text("Email Login").font(.title2).fontWeight(.semibold)
                                    
                            }.frame(minWidth: 0, maxWidth: 180, minHeight: 0, maxHeight: 400).foregroundColor(.white).background(Color.systemGray3)
                        }.cornerRadius(15)
                    } //End VStack
                } //MARK: End HStack
                .padding()
               // Divider()
    
            AppSettingsView()
                    .frame(width:.infinity, height:1000)
                    
    
               
                
                
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
        
    } // End UserView body
} // End UserView

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
    }
}
