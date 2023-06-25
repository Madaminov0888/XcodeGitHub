//
//  SafeAreasB.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 26/05/23.
//

import SwiftUI

struct SafeAreasB: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("It is title")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10) { i in
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 100)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .shadow(radius: 10)
                }
            }
        }
        .background(
            Color.cyan
        )
        
        
        
        
//        ZStack {
//            //background
//            Color.cyan
//                .ignoresSafeArea()
//
//            //foreground
//
//            VStack {
//                Text("Hello, World!")
//                    .font(.title)
//                    .fontWeight(.semibold)
//                    .padding()
//                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//                    //.background(.cyan)
//                    .foregroundColor(.white)
//            }
//        }
        //.ignoresSafeArea()
    }
}

struct SafeAreasB_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreasB()
    }
}
