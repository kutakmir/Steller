//
//  RoutableViewProtocol.swift
//  Steller
//
//  Created by Miroslav Kutak on 03/04/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import Combine
import SwiftUI

/**
 Defines custom routing, similar to Navigation stack
 */
protocol RoutableViewProtocol {

    var routingModel: [RouterComponent] { get }
    var routerUpdate: AnyPublisher<[RouterComponent], Never>? { get }

    func routableStack() -> AnyView

}


extension RoutableViewProtocol {

    var routerUpdate: AnyPublisher<[RouterComponent], Never>? {
        return nil
    }

    func routableStack() -> AnyView {
        AnyView(
            ZStack {
                if self.routingModel.count > 0 {
                    self.routingModel.last!.view
                }
            }
        )
    }

}
