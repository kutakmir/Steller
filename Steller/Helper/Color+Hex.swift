//
//  Color+Hex.swift
//  Steller
//
//  Created by Miroslav Kutak on 22/03/2020.
//  Copyright © 2020 Curly Bracers. All rights reserved.
//

import SwiftUI

extension Color {

    /**
     Initializes this color value for the associated hex code (e.g. 0xfff, 0xfff0, 0xfff000, 0xfff000ff)

     - parameter hex:   The hex value representing this color
     - parameter alpha: An optional alpha value. Defaults to 1.0
     */
    public init?(hex: Int, alpha: Double? = nil) {
        self.init(hex: String(format:"%2X", hex), alpha: alpha)
    }

    /**
     Initializes this color value for the associated hex code (e.g. 'fff', 'fff0', 'fff00', 'fff000ff'). A '#' prefix is also supported

     - parameter hex:   The hex value representing this color
     - parameter alpha: An optional alpha value. Defaults to 1.0
     */
    public init?(hex: String, alpha: Double? = nil) {
        var hexValue = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
        guard [3, 4, 6, 8].contains(hexValue.count) else { return nil }

        if hexValue.count == 3 {
            hexValue.append("F")
        }

        if hexValue.count == 6 {
            hexValue.append("FF")
        }

        if [3, 4].contains(hexValue.count) {
            for (index, char) in hexValue.enumerated() {
                let index = hexValue.index(hexValue.startIndex, offsetBy: index * 2)
                hexValue.insert(char, at: index)
            }
        }

        guard let normalizedHex = Int(hexValue, radix: 16) else { return nil }

        self.init(
            red:   Double((normalizedHex >> 24) & 0xFF) / 255,
            green: Double((normalizedHex >> 16) & 0xFF) / 255,
            blue:  Double((normalizedHex >> 8)  & 0xFF) / 255,
            opacity: alpha ?? Double((normalizedHex)  & 0xFF) / 255)
    }

}
