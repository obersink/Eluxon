//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Simon Zhen on 2/26/18.
//  Copyright © 2018 Simon Zhen. All rights reserved.
//

import Foundation

//enum
enum SwitchStatus: Togglable {
    
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}


//struct
struct BoolSwitch: Togglable {
    
    var state: Bool = false
    
    mutating func toggle() {
        state = !state
    }
}
