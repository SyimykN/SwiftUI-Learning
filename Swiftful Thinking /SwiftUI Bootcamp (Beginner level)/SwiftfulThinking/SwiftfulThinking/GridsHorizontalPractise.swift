//
//  GridsHorizontalPractise.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 10/9/26.
//

import SwiftUI

struct GridsHorizontalPractise: View {
    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(0..<30) { index in
                    Rectangle()
//                        .frame(width: 50, height: 50)
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridsHorizontalPractise()
}
