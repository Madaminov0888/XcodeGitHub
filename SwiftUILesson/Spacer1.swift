//
//  Spacer.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 23/05/23.
//

import SwiftUI

struct Spacer1: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "xmark")
                    .background(
                        Color.yellow
                            .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    )
                Spacer()
                Image(systemName: "square.and.arrow.down")
                    .background(
                        Color.yellow
                            .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    )
    //            Spacer()
    //                .frame(height: 20)
    //                .background(
    //                    Color.orange
    //                )
    //            RoundedRectangle(cornerRadius: 20)
    //                .fill(.cyan)
    //                .frame(width: 100, height: 100)
    //            Spacer()
    //                .frame(height: 20)
    //                .background(
    //                    Color.orange
    //                )
    //            RoundedRectangle(cornerRadius: 20)
    //                .fill(.red)
    //                .frame(width: 100, height: 100)
    //            Spacer()
    //                .frame(height: 20)
    //                .background(
    //                    Color.orange
    //                )
            }
            .font(.title)
//            .background(
//                Color.yellow
//                .cornerRadius(5)
//            )
            .padding(.horizontal, 15)
            Text("14:48")
                .font(.system(size: 70))
                .foregroundColor(.white)
                .fontWeight(.bold)
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: 340, height: 70)
                .overlay(alignment: .center,content: {
                    VStack {
                        Spacer()
                        HStack {
                            Text("Next Wallpaper")
                                .font(.largeTitle)
                                //.padding(.bottom, 55)
                            Image(systemName: "forward.fill")
                                //.padding(.bottom, 50)
                                .font(.title)
                        }
                        Spacer()
                        //Spacer(minLength: 75)
                    }
                })
                .padding(.bottom, 60)
                .frame(width: 340, height: 70)
        }
        .background(
            Image("image1")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
        )
//            //Color(.yellow)
//            Image("paris1")
//                .resizable()
//                //.scaledToFill()
//                .clipped()
//                .cornerRadius(20)
//        )
//        .padding()
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacer1()
    }
}
