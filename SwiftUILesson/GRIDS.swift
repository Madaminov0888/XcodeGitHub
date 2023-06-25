//
//  GRIDS.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 25/05/23.
//

import SwiftUI

struct GRIDS: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //GridItem(.fixed(100), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(.white)
                    .frame(width: 200, height: 200)
                VStack {
                    Circle()
                        .frame(width: 200)
                        .overlay {
                            Image("image1")
                                .resizable()
                                .scaledToFill()
                            
                        }
                        .clipped()
                        .cornerRadius(100)
                    Text("Profile")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders]){
                Section {
                    ForEach(0..<50) { i in
                        RoundedRectangle(cornerRadius: 5)
                            .frame(height: 200)
                    }
                } header: {
                    Text("Images")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.cyan)
                        )
                        .padding(.horizontal,6)
                        .font(.title)
                        .fontWeight(.semibold)
                    }
                }
                      .padding(5)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: [.sectionHeaders]){
                Section {
                    ForEach(0..<50) { i in
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.gray)
                            .frame(height: 200)
                    }
                } header: {
                    Text("Old Images")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.red)
                        )
                        .padding(.horizontal,6)
                        .font(.title)
                        .fontWeight(.semibold)
                    }
                }
                      .padding(5)
            }
        }
        
//        VStack {
//            ScrollView(.vertical, showsIndicators: true) {
//                VStack {
//                    RoundedRectangle(cornerRadius: 3)
//                        .fill(.cyan)
//                        .cornerRadius(5)
//                    .frame(width: 400, height: 400)
//                    LazyVGrid(columns: columns, spacing: nil) {
//                        ForEach(0..<50) { i in
//                            RoundedRectangle(cornerRadius: 5)
//                                .frame(height: 200)
//                        }
//                    }
//                }
//
//                //.frame(width: 370, height: 350)
//            }
//        }
}

struct GRIDS_Previews: PreviewProvider {
    static var previews: some View {
        GRIDS()
    }
}
