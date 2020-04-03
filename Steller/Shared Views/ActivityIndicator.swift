//
//  ActivityIndicator.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    var isAnimating: Bool
    fileprivate var configuration: ((UIActivityIndicatorView) -> Void)?
    init(isAnimating: Bool) { self.isAnimating = isAnimating }

    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIActivityIndicatorView { UIActivityIndicatorView() }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Self>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        configuration?(uiView)
    }
}

extension View where Self == ActivityIndicator {
    func configure(_ configuration: @escaping (UIActivityIndicatorView)->Void) -> Self {
        var instance = Self(isAnimating: self.isAnimating)
        instance.configuration = configuration
        return instance
    }
}
