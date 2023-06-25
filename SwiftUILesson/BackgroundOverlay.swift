//
//  BackgroundOverlay.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 19/05/23.
//

import SwiftUI

let cm = Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))

struct BackgroundOverlay: View {
    var body: some View {
//        Text("Hello world!!")
//            .background(
//                //LinearGradient(gradient: Gradient (colors:[Color.red, Color.blue]), startPoint: .center, endPoint: .leading)
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.cyan]), startPoint: .center, endPoint: .leading)
//                         )
//                    .background(
//                        Circle()
//                            .fill(LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.red]), startPoint: .center, endPoint: .leading))
//                            .frame(width: 220, height: 220)
//                    )
//                    .frame(width: 200, height: 200)
//        RoundedRectangle(cornerRadius: 20)
//            .fill(.cyan)
//            .frame(width: 200, height: 200)
//            .overlay(
//                RoundedRectangle(cornerRadius:20)
//                    .fill(.red )
//                    .frame(width: 100, height: 100)
//
//            )
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size:60))
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 120, height: 120)
                    .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.8), radius: 10, x: -4, y: 10)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 35, height: 35)
                            .shadow(color: .black.opacity(0.2), radius: 11, x: -7, y: 7)
                            .overlay(
                                Text("1")
                                    .foregroundColor(.white)
                                    .font(.body)
                            )
                        , alignment: .topTrailing)
            )
            
            
            
    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay()
    }
}
