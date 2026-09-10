//
//  TextBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 7/9/26.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .font(.body)
////            .fontWeight(.semibold)
//            .bold()
////            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .bold, design: .serif))
//            .baselineOffset(50.0)
//            .kerning(10)
            .multilineTextAlignment(.trailing)
            .foregroundStyle(.red)
            .frame(width: 180, height: 300, alignment: .leading)
            .minimumScaleFactor(0.1) // насколько максимум может быть уменьшен
        
    }
}

#Preview {
    TextBootcamp()
}
