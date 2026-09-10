//
//  ForEachBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 8/9/26.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hdsf", "fsdf", "dsfasdf"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is \(index)")
//                }
//            }
            
            
            ForEach(data.indices) { index in
                Text("NEW ITEM: \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
