//
//  ImageBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("dream_car")
            //.renderingMode(.template)
            .resizable()
            .scaledToFill()
            .frame(width: 400, height: 300)
            //.foregroundStyle(.red)
//            .clipped()
//            .cornerRadius(30)
            //.clipShape(
              //   Circle()
                // RoundedRectangle(cornerRadius: 60)
                //Ellipse()
            //)
    }
}

#Preview {
    ImageBootcamp()
}
