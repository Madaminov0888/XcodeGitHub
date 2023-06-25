//
//  Shapes.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 04/05/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
////            .fill(.orange)
////            .foregroundColor(.red)
////            .stroke(.green, lineWidth: 20)
////            .stroke(Color.red,style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [3]))
//            .trim(from: 0.34, to: 1)
//            .stroke(.red, style: StrokeStyle(lineWidth: 25, lineCap: .butt, dash: [5]))
//        Ellipse()
//            .trim(from: 0.3, to: 1)
//            .stroke(.red,style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [4] ))
//            .frame(width: 360, height: 200)
        //Capsule(style: .continuous)
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.black)
            .shadow(color: .red, radius: 60)
            .frame(width: 360, height: 200)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
