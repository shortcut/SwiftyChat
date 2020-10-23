//
//  AttributedTextStyle.swift
//  
//
//  Created by Enes Karaosman on 13.08.2020.
//

#if os(iOS)
import UIKit
#endif


public struct AttributedTextStyle {
 
    public let textColor: LegacyColor
    public let font: LegacyFont
    public let fontWeight: LegacyFont.Weight
    
    public init(
        textColor: LegacyColor = .white,
        font: LegacyFont = .monospacedSystemFont(ofSize: 17, weight: .semibold),
        fontWeight: LegacyFont.Weight = .semibold
    ) {
        self.textColor = textColor
        self.font = font
        self.fontWeight = fontWeight
    }
}
