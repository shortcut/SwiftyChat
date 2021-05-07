//
//  View++.swift
//  SwiftyChatbot
//
//  Created by Enes Karaosman on 19.05.2020.
//  Copyright © 2020 All rights reserved.
//

import SwiftUI

#if os(macOS)
import Cocoa

public typealias UIImage = NSImage
public typealias UIColor = NSColor
public typealias UIFont  = NSFont
public typealias UIFontDescriptor = NSFontDescriptor
#endif

internal func conditionalStack<Content: View>(isVStack: Bool, content: () -> Content) -> AnyView {
    if isVStack {
        return VStack(alignment: .leading, spacing: 8) { content() }.embedInAnyView()
    }
    return HStack(spacing: 8) { content() }.embedInAnyView()
}

extension Image {
    @ViewBuilder static func getImage(from crossPlatformImage: UIImage) -> Image {
        #if os(iOS)
        Image(uiImage: crossPlatformImage)
        #elseif os(macOS)
        Image(nsImage: crossPlatformImage)
        #endif
    }
}
