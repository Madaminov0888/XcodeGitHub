//
//  IfElse.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 04/06/23.
//

import SwiftUI

struct IfElse: View {
    
    @State var showC: Bool = false
    @State var title: String = "Show circle"
    
    
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text("Circle status: \(showC.description)")
                    .font(.title)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(.red), lineWidth: 3)
                            .shadow(radius: 10)
                    )
                    
                
                Button {
                    showC.toggle()
                } label: {
                    if showC == true {
                        Text("Hide circle")
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal)
                            .background(
                                Color.orange
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                            )
                        } else {
                                    Text("Show circle")
                                        .foregroundColor(.black)
                                        .padding()
                                        .padding(.horizontal)
                                        .background(
                                            Color.orange
                                                .cornerRadius(20)
                                                .shadow(radius: 10)
                                        )
                        }
                }
                if showC == true {
                    Circle()
                        .fill(.green)
                        .frame(width: 200)
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct IfElse_Previews: PreviewProvider {
    static var previews: some View {
        IfElse()
    }
}

