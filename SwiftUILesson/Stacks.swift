//
//  Stacks.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 20/05/23.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
//        VStack(alignment: .leading,spacing: 0, content: {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.cyan)
//                .frame(width: 200, height: 200)
//
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//                .frame(width: 100, height: 200)
//        })
//        ZStack(alignment: .center, content: {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.cyan)
//                .frame(width: 300, height: 300)
//            VStack(alignment: .center, spacing: nil, content: {
//                Circle()
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//                Circle()
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//            })
//            .background(Color.gray)
//        })
//        VStack(alignment: .center) {
//            Text("5")
//                .font(.title)
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        VStack{
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("5")
                    .foregroundColor(.white)
                    .font(.title)
                    .underline()
            }
            .padding()
            Text("5")
                .padding()
                .foregroundColor(.white)
                .font(.title)
                .underline()
                .background(
                    Circle()
                        .fill(.black)
                        .frame(width: 100, height: 100)
                )
                .padding()
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
