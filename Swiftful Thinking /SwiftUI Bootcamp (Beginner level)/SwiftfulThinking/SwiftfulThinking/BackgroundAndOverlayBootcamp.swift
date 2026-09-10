//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        // MARK: Background
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                Text("Bye wordl!")
//                // LinearGradient(colors: [.blue, .yellow], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [.blue, .yellow], startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [.orange, .red], startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 300, height: 300, alignment: .center)
//            )
//            .background(
//                Rectangle()
//                    .fill(.yellow)
//            )
        
        // MARK: Overlay
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay {
//                Text("!")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            }
//            .background(
//                Circle()
//                    .fill(.orange)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .topLeading, content: {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//            })
//            .background(alignment: .topTrailing) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//            }
        
        // MARK: Combined Background and Overlay
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.blue, .purple],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            }
                            .shadow(color: .black, radius: 5, x: 0.0, y: 5)
                    })
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
