//
//  GradientBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 7/9/26.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color(.red)
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(uiColor: .darkGray), .gray]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.yellow, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 500
//                )
                AngularGradient(
                    gradient: Gradient(colors: [Color.yellow, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
//            .ignoresSafeArea()
    }
}

#Preview {
    GradientBootcamp()
}
