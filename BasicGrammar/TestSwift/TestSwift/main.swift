//
//  main.swift
//  TestSwift
//
//  Created by 姜守栋 on 2020/1/15.
//  Copyright © 2020 com.nick. All rights reserved.
//

import Foundation



class Person {
    var age: Int
    init(age: Int) {
        self.age = age
    }
    convenience init() {
        self.init(age: 0)
    }
}

class Student: Person {
//    init(score: Int, age: Int) {
//        self.score = score
//        super.init(age: age)
//    }
     convenience init() {
        self.init(age: 0)

    }
}


//struct Circle {
//    var radius: Int
//    var diameter: Int {
//        set {
//            radius = newValue / 2
//        }
//        get {
//            radius * 2
//        }
//    }
//}

//var c = Circle(radius: 10)
//
//c.radius = 11
//c.diameter = 12




typealias Fn = (Int) -> Int

func getFn() -> Fn {
    
    var num = 0
    func plus(_ i: Int) -> Int {
        num += i
        return num
    }
    return plus
}

//var f1 = getFn()
//print(f1(1))
//print(f1(2))
//print(f1(3))
//var f2 = getFn()

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


