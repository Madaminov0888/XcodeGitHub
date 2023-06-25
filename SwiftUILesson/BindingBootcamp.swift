//
//  BindingBootcamp.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 04/06/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backcolor: Color = Color.gray
    
    var body: some View {
        ZStack {
            backcolor
                .ignoresSafeArea()
            ButtonSubview(backcolor: $backcolor)
            

        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonSubview: View {
    
    @Binding var backcolor: Color
    @State var buttoncolor: Color = .white
    @State var fontcolor: Color = .black
    
    var body: some View {
        Button {
            self.backcolor = .red
            self.fontcolor = .white
            self.buttoncolor = .blue
        } label: {
            Text("Button")
                .foregroundColor(fontcolor)
                .padding()
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(buttoncolor)
                        .shadow(radius: 10)
                )
        }
    }
}
