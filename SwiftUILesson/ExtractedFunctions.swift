//
//  ExtractedFunctions.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 02/06/23.
//

import SwiftUI

struct ExtractedFunctions: View {
    
    @State var backgr = Color.red
    
    var body: some View {
        ZStack {
            backgr
                .ignoresSafeArea()
                //.blur(radius: 20)
            
            VStack {
                Text("Dont press this button")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                Button {
                    self.backgr = .green
                } label: {
                    Text("Press this button")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(
                            Color.blue
                        )
                        .cornerRadius(20)
                        .padding(.vertical)
                }
            }
        }
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}
