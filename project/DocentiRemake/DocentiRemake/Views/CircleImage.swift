/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
            image
                .resizable()
                .frame(width: 225, height: 225)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(CustomColor.fedBlue, lineWidth: 4)
                }
                .shadow(radius: 5)
    } // End body
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Matteo Lorito"))
    }
}
