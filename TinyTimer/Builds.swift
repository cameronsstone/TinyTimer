//
//  Builds.swift
//  TinyTimer
//
//  Created by Tri Ngoc Nguyen on 09/12/2015.
//  Copyright © 2015 Tri Nguyen. All rights reserved.
//

import Cocoa

class Builds: NSObject {
    static var normalColor: NSColor = isDarkMode() ? NSColor.white : NSColor.black
    static var highlightColor = NSColor.init(calibratedRed: 15.0/255.0, green: 175.0/255.0, blue: 104.0/255.0, alpha: 1)
    static var defaultTimers = 60 * 30 //in seconds
    
    static func isDarkMode() -> Bool {
        if #available(macOS 10.14, *) {
           if NSAppearance.current.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua {
              return true
           }
         }

         return false
    }
}
