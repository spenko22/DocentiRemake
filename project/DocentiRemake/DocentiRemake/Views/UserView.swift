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
            Form {
                
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
