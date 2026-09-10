//
//  IconsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "phone.circle.fill")
            .renderingMode(.original)
            //.font(.system(size: 200))
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .clipped()
//            .foregroundStyle(.red)
            .frame(width: 300, height: 300)
    }
}

#Preview {
    IconsBootcamp()
}
