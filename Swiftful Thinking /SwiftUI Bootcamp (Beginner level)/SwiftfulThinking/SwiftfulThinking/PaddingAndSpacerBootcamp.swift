//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
//            //.padding()
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(.blue)
//            .font(.largeTitle)
//            .fontWeight(.semibold)
            //.frame(maxWidth: .infinity, alignment: .leading)
            //.background(.red)
            //.padding(.leading, 20)
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description what sfdjflk asf;dskj sfajljf jklfjasdlff jasdklfjfasdlk fjsdalfjsakldf sdklafjsd! dfsfs fsadf fsadfsdaf fsdaf")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
