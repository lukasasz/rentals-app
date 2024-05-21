//
//  ImageLoader.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import Foundation
import SwiftUI
import Combine

//class ImageLoader: ObservableObject {
//    @Published var image: UIImage?
//
//    private var cancellable: AnyCancellable?
//    private let url: URL
//
//    init(url: URL) {
//        self.url = url
//    }
//
//    deinit {
//        cancellable?.cancel()
//    }
//
//    func load() {
//        cancellable = URLSession.shared.dataTaskPublisher(for: url)
//            .map { UIImage(data: $0.data) }
//            .replaceError(with: nil)
//            .receive(on: DispatchQueue.main)
//            .assign(to: \.image, on: self)
//    }
//
//    func cancel() {
//        cancellable?.cancel()
//    }
//}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private var cancellable: AnyCancellable?
    private var url: URL?

    init(imageURL: String?) {
        self.url = URL(string: imageURL ?? "")
    }

    deinit {
        cancellable?.cancel()
    }

    func load() {
        guard let url = url else {
            self.image = UIImage(named: Constants.defaultListViewPreviewImage)
            return
        }

        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }

    func cancel() {
        cancellable?.cancel()
    }
}
