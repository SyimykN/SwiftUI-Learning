//
//  HorizontalListView.swift
//  BlossomMovie
//
//  Created by Syimyk on 30/8/26.
//

import SwiftUI

struct HorizontalListView: View {
    let header: String
    var titles: [Title]
    let onSelect: (Title) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(titles) { title in
                        AsyncImage(url: URL(string: title.posterPath ?? "" )) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 200)
                        .onTapGesture {
                            onSelect(title)
                        }
                    }
                }
            }
        }
        .frame(height: 250)
        .padding(10)
    }
}

#Preview {
    HorizontalListView(header: Constants.trendingMovieString, titles: Title.previewTitles, onSelect: { title in })
}
