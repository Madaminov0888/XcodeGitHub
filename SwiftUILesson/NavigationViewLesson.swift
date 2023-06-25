//
//  NavigationViewLesson.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 19/06/23.
//

import SwiftUI

struct NavigationViewLesson: View {
    @State var text1: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                    .opacity(0.4)
                    .ignoresSafeArea()
                
                SubView()
            }
            .navigationTitle("Animes")
            .searchable(text: $text1)
        }
    }
}


struct NavigationViewLesson_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewLesson()
        //Extracted()
    }
}

struct SubView: View {
    var body: some View {
        ScrollView {
            ForEach(1..<4) { i in
                NavigationLink(destination: Extracted()) {
                    VStack {
                        Image("image1")
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 300, height: 200)
                            .padding(.horizontal, 7)
                            
                        HStack {
                            Text("Fire Force")
                                .font(.title)
                                .bold()
                                .padding(.horizontal, 30)
                            Spacer()
                            Text("4.5")
                                .fontWeight(.light)
                            Image(systemName: "star.fill")
                                .padding(.trailing, 20)
                                .foregroundColor(.yellow)
                        }
                        HStack {
                            Text("#Shonen, #Action, #Fantasy")
                                .font(.callout)
                                .fontWeight(.light)
                                .padding(.leading, 33)
                            Spacer()
                        }
                    }
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(30)
                            
                    )
                    .padding(.horizontal, 44)
                    .padding(.top, 8)
                    .transition(.slide)
                    .zIndex(2.0)
                }
                .accentColor(.black)
                
            }
        }
        
    }
}

struct Extracted: View {
    var body: some View {
        ZStack {
            VStack {
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 400)
                    .ignoresSafeArea()
                .blur(radius: 15)
                Spacer()
            }
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 30)
                    .ignoresSafeArea()
                    .frame(width: 400, height: 560)
                    .foregroundColor(.gray.opacity(9.0 ))
            }
        }
    }
}
