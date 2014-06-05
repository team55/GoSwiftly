//
//  Geometry.swift
//  SwiftTest
//
//  Created by Ty Cobb on 6/2/14.
//  Copyright (c) 2014 Ty Cobb. All rights reserved.
//

import UIKit

//
// NSRange
//

extension NSRange {
    func sample() -> Int {
        return location + Int.random(length)
    }
}

//
// CGSize
//

extension CGSize {
    
    init(widthRange: NSRange, heightRange: NSRange) {
        width  = CGFloat(heightRange.sample())
        height = CGFloat(heightRange.sample())
    }
    
    init(squareRange: NSRange) {
        width  = CGFloat(squareRange.sample())
        height = width
    }
    
}

//
// CGPoint
//

@infix func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

@infix func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}
