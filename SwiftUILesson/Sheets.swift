//
//  Sheets.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 19/06/23.
//

import SwiftUI

struct Sheets: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.4)
                .ignoresSafeArea()
            
            Button {
                self.showSheet.toggle()
            } label: {
                Text("Hello, world!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                    )
                    .shadow(radius: 10, x: 1, y: 5)
            }
            .sheet(isPresented: $showSheet) {
                SheetView()
            }
        }
    }
}

struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
    }
}

struct SheetView: View {
    var body: some View {
        Text("RUN")
    }
}
