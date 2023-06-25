//
//  TextView.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 04/05/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("hi, nagap")
            .font(.title)
//            .bold()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .blue)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .kerning(1.0)
            .baselineOffset(10)
            .foregroundColor(.green)
            .frame(width: 380,height:100,alignment: .leading)
            .minimumScaleFactor(0.1)
            .multilineTextAlignment(.leading)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
