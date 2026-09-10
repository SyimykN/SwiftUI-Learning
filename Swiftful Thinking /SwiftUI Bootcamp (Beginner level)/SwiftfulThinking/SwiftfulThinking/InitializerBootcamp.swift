//
//  InitializerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

enum Fruit {
    case orange
    case apple
}

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    InitializerBootcamp(backgroundColor: .purple, count: 50, title: "Peaches")
}
