//
//  AsyncImageView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI
import Combine

struct AsyncImageView: View {
    @ObservedObject private var loader: ImageLoader
    var placeholder: UIImage?

//    init(url: URL, placeholder: UIImage? = nil) {
//        loader = ImageLoader(url: url)
//        self.placeholder = placeholder
//    }
//
//    var body: some View {
//        Image(uiImage: loader.image ?? placeholder ?? UIImage())
//            .resizable()
//            .onAppear(perform: loader.load)
//            .onDisappear(perform: loader.cancel)
//    }
    init(imageURL: String?, placeholder: UIImage? = UIImage(named: Constants.defaultListViewPreviewImage)) {
            loader = ImageLoader(imageURL: imageURL)
            self.placeholder = placeholder
        }

        var body: some View {
            Image(uiImage: loader.image ?? placeholder ?? UIImage())
                .resizable()
                .onAppear(perform: loader.load)
                .onDisappear(perform: loader.cancel)
        }
}


//#Preview {
////    AsyncImageView(url: URL("test-house-image.jpeg"))
//}
