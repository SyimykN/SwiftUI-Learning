//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 10/9/26.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.linear(duration: timing), value: isAnimating)
                .animation(.spring(
                    response: 3.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
