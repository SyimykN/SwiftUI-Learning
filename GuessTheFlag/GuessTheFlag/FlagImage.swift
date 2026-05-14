//
//  SwiftUIView.swift
//  GuessTheFlag
//
//  Created by Syimyk on 14/5/26.
//

import SwiftUI

struct FlagImage: View {
    let number: Int
    let buttonAction: (Int) -> Void
    let image: Image
    
    var body: some View {
        Button {
            buttonAction(number)
        } label: {
            image
        }
        .clipShape(.capsule)
        .shadow(radius: 5)
    }
}
