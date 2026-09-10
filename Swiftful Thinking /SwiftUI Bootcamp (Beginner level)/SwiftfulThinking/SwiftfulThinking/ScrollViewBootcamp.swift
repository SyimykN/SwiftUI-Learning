//
//  ScrollViewBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 9/9/26.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(
//                            .blue
//                        )
//                        .frame(width: 300, height: 300)
//                        .overlay {
//                            Text("Im the rectangle number: \(index)")
//                                .font(.title)
//                                .foregroundStyle(.white)
//                        }
//                }
//            }
//        }
        
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
