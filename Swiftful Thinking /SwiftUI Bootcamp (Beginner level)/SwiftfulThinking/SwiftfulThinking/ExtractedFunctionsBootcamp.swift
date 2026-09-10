//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 9/9/26.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            // content
            contenLayer
            
        }
    }
    
    var contenLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(.buttonBorder)
                
            }

        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
