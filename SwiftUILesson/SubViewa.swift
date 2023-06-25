//
//  SubViewa.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 03/06/23.
//

import SwiftUI

struct SubViewa: View {
    
    @State var count: Int = 0
    
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 30) {
                    SomeView(count: self.count, backColor: .red, title: "Apple")
                    SomeView(count: self.count, backColor: .orange, title: "Orange")
                    SomeView(count: self.count, backColor: .purple, title: "Grape")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
    
}

struct SubViewa_Previews: PreviewProvider {
    static var previews: some View {
        SubViewa()
    }
}


struct SomeView: View {
    
    @State var count:Int
    let backColor: Color
    let title: String
    
    var body: some View {
        VStack {
            Text("\(title)s")
                .padding(.bottom)
                .font(.title2)
            Text(String(self.count))
                .font(.largeTitle)
                .underline()
                .padding()
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                )
            Button {
                self.count += 1
            } label: {
                Text("Add 1 \(title.lowercased())")
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 20, y:10)
                    )
            }
            .padding(.top)
        }
        .padding(30)
        .padding(.horizontal, 10)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(backColor)
                .shadow(radius: 10, x:10, y:10)
        )
    }
}
