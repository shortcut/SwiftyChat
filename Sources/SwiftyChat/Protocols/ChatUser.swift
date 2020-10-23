//
//  User.swift
//  SwiftyChatbot
//
//  Created by Enes Karaosman on 19.05.2020.
//  Copyright © 2020 All rights reserved.
//

#if os(iOS)
import UIKit
public typealias LegacyImage = UIImage
public typealias LegacyColor = UIColor
public typealias LegacyFont = UIFont
#elseif os(macOS)
import Cocoa
public typealias LegacyImage = NSImage
public typealias LegacyColor = NSColor
public typealias LegacyFont = NSFont
#endif


public protocol ChatUser: Identifiable, Equatable {

    /// Username
    var userName: String { get }

    /// User's chat profile image, considered if `avatarURL` is nil
    var avatar: LegacyImage? { get }

    /// User's chat profile image URL
    var avatarURL: URL? { get }

}
