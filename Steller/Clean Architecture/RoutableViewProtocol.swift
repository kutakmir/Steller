//
//  RoutableViewProtocol.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import SwiftUI

protocol RoutableViewProtocol {

    var routingModel: [RouterComponent] { get }
    var routerUpdate: AnyPublisher<[RouterComponent], Never>? { get }

    func routableStack() -> AnyView
    func routingView(atIndex index: Int) -> AnyView

}


extension RoutableViewProtocol {

    var routerUpdate: AnyPublisher<[RouterComponent], Never>? {
        return nil
    }

    func routableStack() -> AnyView {
        AnyView(
            ZStack {
                ForEach(0..<routingModel.count, id: \.self) { index in
                    return self.routingView(atIndex: index)
                }
            }
        )
    }

    func routingView(atIndex index: Int) -> AnyView {
        return routingModel[index].view
    }

}
