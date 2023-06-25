//
//  ButtonsB.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 26/05/23.
//

import SwiftUI

struct ButtonsB: View {
    
    @State var title: String = "Title of app"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            Button("Press here") {
                self.title = "Pressed"
            }
            Button(action: {
                self.title = "YOU SHOULD NOT PRESS THIS"
            }) {
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 200, height: 50)
//                    .foregroundColor(.cyan)
//                    .shadow(radius: 10, x:5, y:6)
//                    .overlay {
//                        Text("DONT PRESS ME!")
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//
//                    }
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.cyan
                            .cornerRadius(10)
                            .shadow(radius: 10, x: 5, y:5)
                    )
            }
            
            Button {
                self.title = "Button finish"
            } label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(30)
                    .background(
                        Capsule()
                            .stroke(Color(.gray), lineWidth: 2)
//                            .fill(.white)
                            
                            .frame(width: 125, height: 50)
                            .shadow(radius: 10, x:10)
                            
                )
            }
        }
    }
}

struct ButtonsB_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsB()
    }
}
