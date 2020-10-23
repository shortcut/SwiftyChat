//
//  UIEdgeInsets.swift
//  
//
//  Created by Enes Karaosman on 3.06.2020.
//

#if os(iOS)
import UIKit
public typealias LegacyEdgeInsets = UIEdgeInsets
#elseif os(macOS)
import Cocoa
public typealias LegacyEdgeInsets = NSEdgeInsets
#endif


internal extension LegacyEdgeInsets {

    var vertical: CGFloat {
        return top + bottom
    }

    var horizontal: CGFloat {
        return left + right
    }

}
