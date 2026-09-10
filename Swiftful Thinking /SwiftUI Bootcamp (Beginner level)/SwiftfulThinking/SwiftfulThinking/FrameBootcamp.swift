//
//  FrameBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .frame(width: 100, height: 200)
            .foregroundStyle(.white)
            //.background(.green)
            //.frame(width: 300, height: 300, alignment: .leading)
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
        
    }
}

#Preview {
    FrameBootcamp()
}
