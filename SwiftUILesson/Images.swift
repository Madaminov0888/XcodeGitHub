//
//  Images.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 14/05/23.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("image1")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
            //.clipped()
            //.cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 80)
//            )
            
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
