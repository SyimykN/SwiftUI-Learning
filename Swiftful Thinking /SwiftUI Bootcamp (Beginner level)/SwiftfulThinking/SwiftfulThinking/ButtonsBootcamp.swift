//
//  ButtonsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 9/9/26.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "Button was pressed!"
            }
            .tint(.red)
            
            Button {
                self.title = "Button #2 was pressed!"
            } label: {
                Text("Save!".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(.buttonBorder)
                            .shadow(radius: 10)
                            
                    )
                
            }
            
            Button {
                self.title = "Button #3 was pressed!"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.link)
                    }
            }

            Button {
                self.title = "Button #4 was pressed!"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
