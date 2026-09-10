//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 10/9/26.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            
            VStack {
                Text("1")
                Text("Apples")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.red)
            )
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}
