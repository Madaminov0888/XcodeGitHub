//
//  Loops.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 25/05/23.
//

import SwiftUI

struct Loops: View {
    
    let data: [String] = ["Monday", "Tuesday", "Wednesday","Thursday", "Friday"]
    var body: some View {
        VStack(spacing: 30){
//            ForEach(0..<9) { i in
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 300, height: 50)
//                    .overlay(content: {
//                        Text("Index is: \(i)")
//                            .foregroundColor(.white)
//                            .fontWeight(.medium)
//                    })
//            }
            ForEach(data.indices) { i in
                Text(data[i])
            }
        }
    }
}

struct Loops_Previews: PreviewProvider {
    static var previews: some View {
        Loops()
    }
}
