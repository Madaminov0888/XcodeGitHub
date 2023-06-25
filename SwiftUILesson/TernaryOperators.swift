//
//  TernaryOperators.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 09/06/23.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var color_of_rectagnle: Color = Color.red
    
    var body: some View {
        ZStack {
            
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                if color_of_rectagnle == .green {
                    Button {
                        self.color_of_rectagnle = .red
                    } label: {
                        ExtractedView()
                    } 

                }
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(color_of_rectagnle)
                    .frame(width: 350, height: 200)
                    .padding(.vertical)
                    .shadow(radius: 10)
                
                
                if color_of_rectagnle == .red {
                    Button {
                        self.color_of_rectagnle = .green
                    } label: {
                        Text("Button")
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal)
                            .background(
                                Color.blue
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                            )
                    }
                }
                Spacer()

            }
        }
    }
}

struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                
                    .frame(width: 20, height: 20)
                Text("Back")
                    .foregroundColor(.blue)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(radius: 10)
            )
            .padding(.leading)
            Spacer()
        }
    }
}
