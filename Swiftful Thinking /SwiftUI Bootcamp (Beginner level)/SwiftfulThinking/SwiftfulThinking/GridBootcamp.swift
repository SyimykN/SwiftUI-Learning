//
//  GridBootcamp.swift
//  SwiftfulThinking
//
//  Created by Syimyk on 9/9/26.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                    .foregroundStyle(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                            .overlay {
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 80))
                                    .foregroundStyle(.white)
                            }
                    }

                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundStyle(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 150)
                            .overlay {
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 80))
                                    .foregroundStyle(.white)
                            }
                    }

                }

            }
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                        .overlay {
//                            Image(systemName: "person.crop.circle")
//                                .font(.system(size: 80))
//                                .foregroundStyle(.white)
//                        }
//                }
//            }
        }
    }
}

#Preview {
    GridBootcamp()
}
