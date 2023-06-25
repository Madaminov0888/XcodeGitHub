//
//  Initializer.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 24/05/23.
//

import SwiftUI

struct Initializer: View {
    
    //let backgc: Color
    let dct: [Fruits: Int]
    
    init(objcts: [Fruits: Int]) {
        self.dct = objcts
    }
    
    enum Fruits{
        case apple
        case orange
        case banana
        case grapes
        
        func titleGetter()-> String{
            switch self {
            case .apple:
                return "Apples"
            case .orange:
                return "Oranges"
            case .banana:
                return "Bananas"
            case .grapes:
                return "Grapes"
            }
        }
        
        func simpleDescription()->Color {
            switch self {
            case .apple:
                return Color.red
            case .orange:
                return .orange
            case .banana:
                return .yellow
            case .grapes:
                return .purple
            }
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 40) {
                ForEach(0..<dct.count){i in
                    let objc:Fruits = dct.keys[dct.index(dct.startIndex, offsetBy: i)]
                    VStack(spacing: 8) {
                        Text(String(dct[objc]!))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .underline()
                        Text(objc.titleGetter())
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    .frame(width: 300, height: 200)
                    .background(objc.simpleDescription())
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color.cyan
            )
        }
        .background(Color.cyan)
        
//        VStack(spacing: 8) {
//            Text(String(num_apples))
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .underline()
//            Text(objct)
//                .font(.title2)
//                .foregroundColor(.white)
//        }
//        .frame(width: 200, height: 200)
//        .background(backgc)
//        .cornerRadius(20)
//        .shadow(radius: 10)
    }
}

struct Initializer_Previews: PreviewProvider {
    //var dct1: [String: Int] = ["Apples":5, "Oranges":4, "Bananas": 3]
    static var previews: some View {
        Initializer(objcts: [.apple:2, .orange:4, .banana: 3, .grapes: 40])
    }
}
 
