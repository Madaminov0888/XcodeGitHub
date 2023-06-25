//
//  SheetsB.swift
//  SwiftUILesson
//
//  Created by Muhammadjon Madaminov on 17/06/23.
//

import SwiftUI


class Cars {
    let id: Int;
    var Name: String = "";
    var price: String = "0";
    var isFavourite : Bool = false;
    var imageName: String = "";
    
    init(id: Int,Name: String, price: String, isFavourite: Bool, imageName: String) {
        self.id = id
        self.Name = Name
        self.price = price
        self.isFavourite = isFavourite
        self.imageName = imageName
    }
    
    var description: String {
        return self.Name
    }
    
}


var mainCars: [Cars] = [
    Cars(id: 1, Name: "Fortuna GR", price: "45.0", isFavourite: false, imageName: "Car1"),
    Cars(id: 2, Name: "S 500 Sedan", price: "35.0", isFavourite: false, imageName: "Car3"),
    Cars(id: 3, Name: "Hyundai Sonata", price: "30.0", isFavourite: false, imageName: "Car4"),
             ]


func searchAlgorithm(text: String, funcCars: [Cars]) -> [Cars] {
    var final: [Cars] = []
    if text.isEmpty {
        return funcCars
    } else {
        for i in funcCars {
            if i.Name.contains(text) {
                final.append(i)
            }
        }
        return final
    }
}



struct SheetsB: View {
    
    @State var cars: [Cars]
    @State var isPressed: Bool = false
    @State var searchButtonPressed: Bool = false
    @State var text2: String = ""
    
    var body: some View {
//        NavigationStack{
            TabView {
                Toolbar(cars: $cars, isPressed: $isPressed)
                    .tabItem {
                        Image(systemName: "car")
                        Text("Cars")
                    }
                    
                Text("Not home")
                    .tabItem {
                        Image(systemName: "clock")
                        Text("My feed")
                    }
                Text("Keyin")
                    .tabItem {
                        Image(systemName: "heart")
                        Text("My favourites")
                    }
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                            .font(.title2)
                        Text("Profile")
                    }
            }
            .accentColor(.black)
            
            
            
//        }
    }
}

struct SheetsB_Previews: PreviewProvider {
    static var previews: some View {
        SheetsB(cars: mainCars)
    }
}



struct Toolbar: View {
    
    @Binding var cars: [Cars]
    @State var isLiked: Bool = false
    @Binding var isPressed: Bool
    @State var searchButton: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
    //            Color.gray
    //                .opacity(0.1)
    //                .ignoresSafeArea()k
    //            Color.primary
    //                .ignoresSafeArea()
                
                if !searchButton {
                    VStack{
                        ExtractedView1(cars: $cars, searchButtonPressed: $searchButton)
                            .padding(.top)
                        
                        ScrollView {
                            VStack(spacing: 20) {
                                ForEach(0..<cars.count) { i in
                                    NavigationLink(destination: carDefinitioView(car: cars[i])) {
                                        ButtonLabel(isLiked: isLiked, i: i, cars: cars)
                                    }
                                }
                                
                                
                                
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .blur(radius: searchButton ? 50: 0)
                        .disabled(searchButton)
                        
                        
                        Spacer()
                    }
                    
                    .zIndex(2.0)
                } else {
                    ExtractedView1(cars: $cars, searchButtonPressed: $searchButton)
                        .padding(.top)
                        .zIndex(2.0)
                }
                
                
            }
        }
        
    }
}


struct ExtractedView1: View {
    @Binding var cars: [Cars]
    @Binding var searchButtonPressed: Bool
    @State private var text1: String = ""
    @State var carPressed: Bool = false
    
    
    var body: some View {
        ZStack {
            HStack(spacing: 13) {
                if !searchButtonPressed {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "slider.horizontal.3")
                            Text("FIlter")
                                .font(.title3)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            Color.gray
                                .opacity(0.5)
                                .cornerRadius(20)
                        )
                    }
                    .transition(.scale)
                }
                if !searchButtonPressed {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "map")
                            Text("Maps")
                                .font(.title3)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            Color.gray
                                .opacity(0.5)
                                .cornerRadius(20)
                        )
                    }
                    .transition(.scale)
                }
                

                if !searchButtonPressed {
                    Button {
                        withAnimation(.spring()) {
                            self.searchButtonPressed.toggle()
                        }
                    } label: {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                                .font(.title3)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            Color.gray
                                .opacity(0.5)
                                .cornerRadius(20)
                        )
                    }
                    .transition(AnyTransition.opacity.animation(.spring()))
                } else {
    //                HStack {
    //
    //                    RoundedRectangle(cornerRadius: 20)
    //                        .frame(width: 300, height: 50)
    //                        .foregroundColor(.gray.opacity(0.3))
    //                        .overlay {
    //                            TextField("Search", text: $text1)
    //                                .padding()
    //                    }
    //                    Button {
    //                        withAnimation(.easeInOut) {
    //                            self.searchButtonPressed.toggle()
    //                        }
    //                    } label: {
    //                        Image(systemName: "multiply")
    //                            .font(.title)
    //                    }
    //                    .padding()
    //                    .transition(.scale)
    //
    //                }
                    
                
    //                NavigationView {
                    VStack {
                        SearchView(text1: $text1, cars: carsForSearch, carPressedSearch: $carPressed)
                                
                                
                                //.navigationBarTitleDisplayMode(.inline)
                                .transition(AnyTransition.opacity.animation(.easeIn))
                                .toolbar(content: {
                                    ToolbarItem(placement: .navigationBarLeading) {
                                        Button {
                                            withAnimation(.spring()) {
                                                self.searchButtonPressed.toggle()
                                            }
                                        } label: {
                                            HStack {
                                                Image(systemName: "chevron.backward")
                                                    .font(.title3)
                                                Text("Back")
                                                    .font(.title3)
                                            }
                                            .foregroundColor(.blue)
                                        }
                                        
                                    }
                            })
                            
                    }
                    .navigationBarTitle("Search")
                    .searchable(text: $text1, prompt: "Searching")
                    
//                    .navigationTitle("Search")
                    
                        
    //                }
                    
                }
            }
            .zIndex(2.0)
        }
        .navigationBarHidden(!searchButtonPressed)
    }
    
    var carsForSearch: [Cars] {
        if text1.isEmpty {
            return mainCars
        } else {
            return mainCars.filter{
                $0.Name.contains(text1)
            }
        }
    }
}

struct ButtonLabel: View {
    @State var isLiked: Bool
    let i: Int
    let cars: [Cars]
    
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 360, height: 270)
                .foregroundColor(.gray.opacity(0.3))
            
            VStack {
                HStack {
                    Text("Nearest car")
                        .font(.subheadline)
                        .opacity(0.6)
                    
                    Spacer()
                    Button {
                        self.isLiked.toggle()
                        self.cars[i].isFavourite = self.isLiked
                    } label: {
                        if isLiked == true {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .font(.title)
                        } else {
                            Image(systemName: "heart")
                                .font(.title)
//                                .padding(3)
//                                .background(
//                                    RoundedRectangle(cornerRadius: 15)
//                                        .fill(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                                )
                        }
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                Image(cars[i].imageName)
                    .resizable()
                
                    .scaledToFit()
                    .padding(.bottom,1)
                HStack {
                    Text(cars[i].Name)
                        .font(.title2)
                        .bold()
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    Text("4.8")
                        .font(.callout)
                    
                }
                .padding(.leading)
                .padding(.horizontal)
                .padding(.top, -1)
                .padding(.bottom, 2)
                
                HStack {
                    Text("> 870km")
                        .font(.footnote)
                        .fontWeight(.light)
                        .opacity(0.7)
                        .padding(.horizontal)
                        
                    Image(systemName: "fuelpump.fill")
                        .padding(.leading)
                    Text("50L")
                        .font(.footnote)
                        .fontWeight(.light)
                        .opacity(0.7)
                    Spacer()
                    Text("$ \(cars[i].price)/d")
                        .bold()
                }
                .padding(.horizontal)
                
            }
            
        }
        .foregroundColor(.black)
        .zIndex(2.0)
    }
}

//struct carDefinition: View {
//    let car: Cars
//
//    var body: some View {
//
//    }
//}

struct SearchView: View {
    @Binding var text1: String
    var cars: [Cars]
    @Binding var carPressedSearch: Bool
    
    var body: some View {
        VStack {
//            ScrollView {
                List {
                    ForEach(cars, id: \.id) { i in
                        NavigationLink(destination: carDefinitioView(car: i, isLiked: false)) {
                            HStack {
                                Image(i.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height:35)
                                    .padding(.leading, 20)
                                    .padding(.top, 5)

                                Text(i.Name)
                                    .padding(.leading, 30)
                                    .font(.title3)
                                    .fontWeight(.semibold)

                                Spacer()
                            }
//                            .padding()
//                            .background(
//                                Color.gray
//                                    .opacity(0.3)
//                                    .cornerRadius(20)
//                            )
//                            .padding(.horizontal)
                        }
                        
                        
    //                    Button {
    //                        self.carPressedSearch.toggle()
    //                    } label: {
    //                        HStack {
    //                            Image(i.imageName)
    //                                .resizable()
    //                                .scaledToFit()
    //                                .frame(width: 60, height: 40)
    //                                .padding(.leading, 40)
    //                                .padding(.top)
    //
    //                            Text(i.Name)
    //                                .font(.title3)
    //                                .fontWeight(.semibold)
    //
    //                            Spacer()
    //                        }
    //                    }
    //                    .fullScreenCover(isPresented: $carPressedSearch) {
    //                        carDefinitioView(isFullScreen: true, car: i, carPressedSearch: $carPressedSearch)
    //                    }

                    }
                }
                
//            }
            //
            
            Spacer()
        }
    }
}
