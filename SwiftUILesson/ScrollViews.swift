//
//  ScrollViews.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 25/05/23.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<5) { i in
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(.cyan)
//                        .frame(width: 350, height: 200)
//                }
//            }
//        }
        ScrollView(.vertical) {
            LazyVStack(spacing:20) {
                ForEach(0..<100) { i in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 20) {
                            ForEach(1..<4) { i in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.cyan)
                                    .frame(width: 350, height: 200)
                                    .shadow(radius: 10, x:5, y:5)
                                    .padding(.bottom, 10)
                            }
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
