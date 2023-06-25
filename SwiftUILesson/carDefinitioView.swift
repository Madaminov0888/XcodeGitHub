//
//  carDefinitioView.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 19/06/23.
//

import SwiftUI

struct carDefinitioView: View {
    let car: Cars
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 400, height: 383)
                    .foregroundColor(.gray.opacity(0.3))
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Button {
                            withAnimation(.easeInOut) {
                                self.isLiked.toggle()
                            }
                        } label: {
                            if isLiked {
                                Image(systemName: "heart.fill")
                                    .font(.title)
                                
                                    .foregroundColor(.red)
                                    .padding(8)
                                    .background(
                                        Color.white
                                            .cornerRadius(14)
                                    )
                                    .padding(.horizontal, 30)
                                    .shadow(radius: 10)

                            } else {
                                Image(systemName: "heart")
                                    .font(.title)
                                
                                    .foregroundColor(.black)
                                    .padding(8)
                                    .background(
                                        Color.white
                                            .cornerRadius(14)
                                    )
                                    .padding(.horizontal, 30)
                                    .shadow(radius: 10)
                            }
                                
                        }

                    }
                    Image("\(car.imageName)")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 20)
                    Text(car.Name)
                        //.padding()
                        .padding(.leading)
                        .font(.largeTitle)
                        .bold()
                    
                    HStack {
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.orange)
                            .padding(.leading, 25)
                        Text("4.9")
                            .font(.callout)
                            .fontWeight(.light)
                        Text("(230 Reviews)")
                            .font(.caption)
                            .fontWeight(.ultraLight)
                    }
                }
            }
            Spacer()
        }
        .statusBar(hidden: true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(false)
    }
}

struct carDefinitioView_Previews: PreviewProvider {
    @State var t1: Bool = true
    static var previews: some View {
        carDefinitioView(car: Cars(id: 1, Name: "Fortuna GR", price: "45.0", isFavourite: false, imageName: "Car1"))
    }
}
