//
//  Colors.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 04/05/23.
//

import SwiftUI


struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
        //let mycolor =
            .fill(
                //.primary
                //.red
                //Color(uiColor: UIColor.secondarySystemFill)
                Color("mColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: .red.opacity(0.5),radius: 10, x:-10, y:10)
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
