//
//  main.swift
//  TestSwift
//
//  Created by 姜守栋 on 2020/1/15.
//  Copyright © 2020 com.nick. All rights reserved.
//

import Foundation

func testValueType() {
    
}

func testClassAndStruct() {
    class Size {
        var width = 1
        var height = 2
        
    }
    struct Point {
        var x = 3
        var y = 4
    }
    
    var size = Size()
    var point = Point()
    
}

testClassAndStruct()

func testClass() {
    class Point {
        var x = 0
        var y = 0
        
    }
    
    let _ = Point()
    
}
func testStruct() {
    struct Point {
        var x = 10
        var y = 20
        var b = true
    }
    let _ = Point()
    print(MemoryLayout<Point>.size)
    print(MemoryLayout<Point>.stride)
    print(MemoryLayout<Point>.alignment)
}


/// 测试枚举
func testEnum2() {
    enum TestEnum {
        case test1(Int, Int, Int)
        case test2(Int, Int)
        case test3(Int)
        case test4(Bool)
        case test5
    }
    
    var e = TestEnum.test1(10, 20, 30)
//    print(Mems.ptr(ofVal: &e))
    switch e {
    case let .test1(v1, v2, v3):
        print("test1", v1, v2, v3)
        
    case let .test2(v1, v2):
        print("test2", v1, v2)
        
    case let .test3(v1):
        print("test3", v1)
        
    case let .test4(v1):
        print("test4", v1)
        
    case .test5:
        print("test5")
    }
}


