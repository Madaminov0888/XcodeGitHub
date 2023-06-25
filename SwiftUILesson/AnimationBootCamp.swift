//
//  AnimationBootCamp.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 09/06/23.
//

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                    isAnimated.toggle()
                    
                } label: {
                    Text("Button")
                        .font(.title)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .shadow(radius: 10)
                        )
                        .padding()
                }
                Spacer()
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .frame(
                        width: isAnimated ? 350 : 300,
                        height: isAnimated ? 200 : 100
                    )
                    .foregroundColor(isAnimated ? Color.green : .cyan)
                    .shadow(radius: 10)
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? 200 : -10)
                    .animation(Animation.easeInOut)
                    
                Spacer()
            }
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
