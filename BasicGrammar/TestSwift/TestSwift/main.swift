//
//  main.swift
//  TestSwift
//
//  Created by 姜守栋 on 2020/1/15.
//  Copyright © 2020 com.nick. All rights reserved.
//

import Foundation

enum Direction {
    case north, south, east, west
}
let d = Direction.north

switch d {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("ease")
case .west:
    print("west")
}


