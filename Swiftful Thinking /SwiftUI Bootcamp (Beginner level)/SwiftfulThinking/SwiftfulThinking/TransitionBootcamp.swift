//
//  TransitionBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 10/9/26.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
//                    withAnimation {
                        showView.toggle()
//                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.opacity(showView ? 1.0 : 0.0)
                    //.transition(.move(edge: .bottom))
                    .transition(.opacity)
                    .animation(.easeInOut)
            }
        }
        .ignoresSafeArea(edges: .bottom)
        
//        VStack {
//            Spacer()
//            if showView {
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                    .transition(.slide)
//                    .animation(.easeInOut, value: showView)
//            } else {
//                Circle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                    .transition(.slide)
//                    .animation(.easeInOut, value: showView)
//            }
//            
//            Spacer()
//            Button("Button") {
////                withAnimation(.bouncy.speed(5.0)) {
//                    showView.toggle()
////                }
//            }
//        }
    }
}

#Preview {
    TransitionBootcamp()
}
