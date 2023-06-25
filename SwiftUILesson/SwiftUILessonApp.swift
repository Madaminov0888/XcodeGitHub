//
//  SwiftUILessonApp.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 02/05/23.
//

import SwiftUI

@main
struct SwiftUILessonApp: App {
    var body: some Scene {
        WindowGroup {
            SheetsB(cars: [
                Cars(id: 1, Name: "Fortuna GR", price: "45.0", isFavourite: false, imageName: "Car1"),
                Cars(id: 2, Name: "S 500 Sedan", price: "35.0", isFavourite: false, imageName: "Car3"),
                Cars(id: 3, Name: "Hyundai Sonata", price: "30.0", isFavourite: false, imageName: "Car4"),
            ], isPressed: false)
        }
    }
}
