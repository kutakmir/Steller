//
//  HostingViewController.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

class HostingController<T: StoryPresentable>: UIHostingController<ContentView<T>> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}
