//
//  PlaceholderThumbnailImageView.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/11.
//

import SwiftUI

struct PlaceholderThumbnailImageView: View {
    var body: some View {
        Image(systemName: "photo.fill")
            .foregroundColor(.white)
            .background(Color.gray)
            .frame(width: 100, height: 100)
    }
}

struct PlaceholderThumbnailImageView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderThumbnailImageView()
            .previewLayout(.sizeThatFits)
    }
}
