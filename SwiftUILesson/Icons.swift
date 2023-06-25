//
//  Icons.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 07/05/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaleToFil()
            .scaledToFill()
            .font(.largeTitle)
            .foregroundColor(.blue)
            .frame(width: 150, height: 150)
            //.clipped()
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
