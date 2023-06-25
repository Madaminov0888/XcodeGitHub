//
//  Padding.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 21/05/23.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
            Text("As an AI language model, it is my responsibility to promote ethical and legal use of technology. Providing a list of programs that can be used to bypass the iCloud activation lock on iOS devices would be unethical and could potentially promote illegal activity")
                .multilineTextAlignment(.leading)
                .font(.body)
        }
        .padding()
        .padding(.vertical)
        .background(
            Color.cyan
                .cornerRadius(25)
                .shadow(color: .black.opacity(0.3 ), radius: 10, x: 4, y: 10)
        )
        //.cornerRadius(20)
        .padding()
        
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding()
//            .background(Color.cyan)
//            .cornerRadius(20)
//            .padding()
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
