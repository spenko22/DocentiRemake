//
//  AppSettingsView.swift
//  DocentiRemake
//
//  Created by Pasquale Viscido on 23/11/22.
//

import SwiftUI

struct AppSettingsView: View {
    var languages = ["Italiano", "English", "Napoletano"]
    @State private var selectedLanguage = "English"
    var body: some View {
        
        
 NavigationView {
     
         List {
             Picker("Display Language", selection: $selectedLanguage) {
                 ForEach(languages, id: \.self) {
                     Text($0)
                 }
             } // End Picker
             
         } // End List
         .navigationTitle("User Settings")
     
 } // End NavigationView
 .navigationViewStyle(StackNavigationViewStyle())
        
    } //End body
    
} // End AppSettingsView

struct AppSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AppSettingsView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch) (3rd generation)"))
            .previewDisplayName("iPad Pro 11\"")
    }
}
