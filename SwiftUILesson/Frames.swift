//
//  Frames.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 18/05/23.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.yellow)
            //.frame(width: 200, height: 200)
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .background(.red)k
            .frame(height: 100)
            .background(.blue)
            .frame(width: 200)
            .background(.pink)
            .frame(maxWidth: .infinity)
            .background(.black)
            .frame(maxHeight: .infinity)
            .background(Color(.cyan))
            .ignoresSafeArea()
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
