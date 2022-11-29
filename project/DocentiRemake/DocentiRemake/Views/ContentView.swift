
//
//  ContentView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 20/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State private var search =  ""
    @State private var searchText = ""
    var body: some View {
            NavigationView {
                    Form {
// // Following, things I removed bc I got in touch with the ".searchable" modifier
//                    Section {
//                        HStack {
//                            Image(systemName: "magnifyingglass")
//                                .foregroundColor(CustomColor.fedBlue)
//
//
//                            TextField("Professor, Teaching, Course Code...", text: $search)
//
//
//                        } // End HStack 2
                            
//                    } // End Section
                        Section {
                                TeacherList()
                        } header: {
                            Text("Favourites")
                        }
            } // End Form
                    .navigationTitle("Search")
                .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/).toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button {
                            showingSheet.toggle()

                        } label: {
                            Text("User Login")
                            Image(systemName: "person.circle.fill")

                            //    .resizable()
                             //   .frame(width:50.0, height:50.0)
                        } .fontWeight(.semibold)
                        .sheet(isPresented: $showingSheet) {
                            UserView()
                        }

                    } // End navigationBarTrailing
                } // End NavigationBarTitleDisplayMode

            } //MARK: End NavigationView
            .navigationViewStyle(StackNavigationViewStyle())
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Professor, Teaching, Course Code")
        
            }// End body
    } //MARK: End ContentView









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
    }
}
