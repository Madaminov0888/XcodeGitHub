//
//  Gradients.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 07/05/23.
//

import SwiftUI

let cl = Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
let cl2 = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))


struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color("mColor")
//                LinearGradient(
//                    colors: [cl2, cl],
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                )
//                RadialGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))],
//                               center: .top,
//                               startRadius: 10,
//                               endRadius: 500)
                AngularGradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))], center: .topLeading, angle: .degrees(340))
            )
            .frame(width: 300, height: 200, alignment: .center)
            .shadow(color: .black.opacity(0.3), radius: 3, x : 0, y: 10)
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
