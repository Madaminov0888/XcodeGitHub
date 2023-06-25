//
//  Transitions.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 14/06/23.
//

import SwiftUI

struct Transitions: View {
    
    @State var isAnimated : Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color.gray
    //                .zIndex(0)
                    .ignoresSafeArea()
                
                VStack {
                    Button {
                        self.isAnimated.toggle()
                        
                    } label: {
                        Text("Button")
                            .font(.title)
                            .padding()
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .background(
                                Color.blue
                            )
                            .cornerRadius(20)
                            .shadow(radius: 10)
                    }
                    Spacer()
                }
                if isAnimated {
                    RoundedRectangle(cornerRadius: 20)
                        
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(.move(edge: .bottom))
                        //
                        //.transition(AnyTransition.opacity.animation(.easeInOut))
                        .zIndex(1)
                        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .leading)))
                        .animation(.spring(response: 0.5, dampingFraction: 0.75, blendDuration: 1))
                        .offset(y:10)
                        .shadow(radius: 100)
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
        
        
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}
