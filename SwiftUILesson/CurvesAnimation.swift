//
//  CurvesAnimation.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 13/06/23.
//

import SwiftUI

struct CurvesAnimation: View {
    
    @State var is_animated : Bool = false
    
    var body: some View {
        VStack {
//            RoundedRectangle(cornerRadius: is_animated ? 20 : 25)
//                .frame(width: 300, height: 200)
//                .foregroundColor(is_animated ? .cyan : .green)
//                .animation(.easeIn)
//            RoundedRectangle(cornerRadius: is_animated ? 20 : 25)
//                .frame(width: 300, height: 200)
//                .foregroundColor(is_animated ? .cyan : .green)
//                .animation(.linear)
//
//            RoundedRectangle(cornerRadius: is_animated ? 20 : 25)
//                .frame(width: 300, height: 100)
//                .foregroundColor(is_animated ? .cyan : .green)
//                .animation(.default)
//
            RoundedRectangle(cornerRadius: is_animated ? 20 : 25)
                .frame(width: is_animated ? 350 : 200, height: 200)
                .foregroundColor(is_animated ? .cyan : .green)
                .animation(.spring(response: 1, dampingFraction: 0.75, blendDuration: 1))
            
            
            
            Button {
                self.is_animated.toggle()
                
            } label: {
                Text("Button")
        }
        }

    }
}

struct CurvesAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CurvesAnimation()
    }
}
