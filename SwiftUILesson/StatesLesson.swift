//
//  StatesLesson.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 01/06/23.
//

import SwiftUI

struct StatesLesson: View {
    
    @State var backc = Color.red
    
    var body: some View {
        ZStack {
            backc
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("App today")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("Counts: 2")
                    .font(.title2)
                    .foregroundColor(.white)
                
                
                HStack(spacing: 20) {
                    Button("Save") {
                        self.backc = .green
                    }
                    .padding()
                    .padding(.horizontal, 9)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                    )
                    Button("Cancel") {
                        self.backc = .black
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                    )
                }
            }
        }
    }
}

struct StatesLesson_Previews: PreviewProvider {
    static var previews: some View {
        StatesLesson()
    }
}
