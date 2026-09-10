//
//  ColorsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 7/9/26.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
                Color("FuckingColor")
            )
            .frame(width: 300, height: 300)
//            .shadow(radius: 10)
            .shadow(color: Color("FuckingColor").opacity(0.4), radius: 20, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
//        .preferredColorScheme(.dark)
}
