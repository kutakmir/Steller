//
//  Triangle.swift
//  Steller
//
//  Created by Miroslav Kutak on 26/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

struct Triangle: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        return path
    }
}
