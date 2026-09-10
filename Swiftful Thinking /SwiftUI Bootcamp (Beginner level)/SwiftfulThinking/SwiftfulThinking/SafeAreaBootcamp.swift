//
//  SafeAreaBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 9/9/26.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
            // background
//            Color.blue
//                .ignoresSafeArea()
            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
            //.ignoresSafeArea() // not a good practise
//        }
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
            //.edgesIgnoringSafeArea(.bottom)
//            .ignoresSafeArea()
        
        ScrollView {
            VStack {
                Text("Title goes here!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.red)
        //.ignoresSafeArea()
    }
}

#Preview {
    SafeAreaBootcamp()
}
