//
//  ArticleView.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/11.
//

import SwiftUI
import URLImage

struct ArticleView: View {
    @State var isLoading: Bool
    let article: Article
    
    var body: some View {
        HStack {
            if let imageUrl = article.image, let url = URL(string: imageUrl) {
                URLImage(url, identifier: article.id.uuidString, failure: { _, _ in
                    PlaceholderThumbnailImageView()
                }) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            } else {
                PlaceholderThumbnailImageView()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading, spacing: 4, content: {
                Text(article.title ?? "N/A")
                    .font(.system(size: 18, weight: .semibold))
                Text(article.source ?? "N/A")
                    .foregroundColor(.gray)
                    .font(.footnote)
                if let date = article.date {
                    HStack(spacing: 4) {
                        Text(date, style: .date)
                            .fontWeight(.bold)
                        Text(date, style: .time)
                    }
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                }
            })
        }
        .redacted(reason: isLoading ? .placeholder : [])
        .allowsHitTesting(!isLoading)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(isLoading: true, article: Article.dummyData.first!)
            .previewLayout(.sizeThatFits)
    }
}
