//
//  PopOverBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 10/9/26.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopOverBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    withAnimation(.default) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
        }
        // Method 1 - SHEET
//        .sheet(isPresented: $showNewScreen) {
//            NewScreen()
//        }
        // Method 2 - TRANSITION
        if showNewScreen {
            NewScreen(showNewScreen: $showNewScreen)
                .transition(.move(edge: .bottom))
//                .animation(.easeInOut, value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button {
                dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .padding()
        }
    }
}

#Preview {
    PopOverBootcamp()
//    NewScreen()
}
