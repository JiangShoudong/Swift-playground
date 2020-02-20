//
//  main.swift
//  TestSwift
//
//  Created by JIANG SHOUDONG on 2020/2/19.
//  Copyright © 2020 Napoleon Jiang. All rights reserved.
//

import Foundation

protocol TestProtocol {
    func test1()
}

extension TestProtocol {
    func test1()  {
        print("TestProtocol test1")
    }
    func test2() {
        print("TestProtocol test2")
    }
}
class TestClass: TestProtocol {
    func test1()  {
        print("TestClass test1")
    }
    func test2() {
        print("TestClass test2")
    }
    
    func test3() {
//        print("TestClass test3")
        debugPrint("TestClass test3")
    }
}

var cls = TestClass()
cls.test1()
cls.test2()
cls.test3()

//infix operator +- : PlusMinusPrecedence
//precedencegroup PlusMinusPrecedence {
//    associativity: left // 结合性
//    higherThan: AdditionPrecedence // 比谁的优先级高
//    lowerThan: MultiplicationPrecedence // 比谁的优先级低
//    assignment: true // 在可选链中拥有跟赋值运算符一样的优先级
//}
//
//struct Point {
//    var x = 0, y = 0
//
//    static func +-(p1: Point, p2: Point) -> Point {
//        Point(x: p1.x + p2.x, y: p1.y - p2.y)
//    }
//}
//var p1 = Point(x: 10, y: 20)
//var p2 = Point(x: 11, y: 22)
//
//var p3 = p1 +- p2 +- p1
//print(p3.x, p3.y)
//
//class Person {
//    var age = 0
//    var point: Point = Point()
//
//}
//
//var p: Person? = Person()
//// 在可选链中拥有跟赋值运算符一样的优先级
//p?.point +- Point(x: 10, y: 10)

//enum Answer: Equatable {
//    case wrong(Int)
//    case right
//}
//
//let a1 = Answer.wrong(10)
//let a2 = Answer.right
//
//print(a1 == a2)
//struct Point {
//    var x = 0, y = 0
//    static func +(p1: Point, p2: Point) -> Point {
//        Point(x: p1.x + p2.x, y: p1.y + p2.y)
//    }
//    static func +=(p1: inout Point, p2: Point) {
//        p1 = p1 + p2
//    }
//    static prefix func ++(p: inout Point) -> Point {
//        p += Point(x: 1, y: 1)
//        return p
//    }
//    static postfix func ++(p: inout Point) -> Point {
//        let tmp = p;
//        p += Point(x: 1, y: 1)
//        return tmp
//    }
//}
//
//
//
//var p1 = Point(x: 10, y: 20)
//var p2 = Point(x: 11, y: 22)
//
//var p3 = p1 + p2
//p3 += Point(x: 4, y: 3)
//print(p3++)
//print(p3.x, p3.y)

//var v1 = UInt8.max
//
//var v2 = v1 &+ 1
//
//print(v2)

//protocol Runnable {
//    associatedtype Speed
//    var speed: Speed { get }
//}
//
//class Person: Runnable {
//    var speed: Double { 0.0 }
//}
//
//class Car: Runnable {
//    var speed: Int { 0 }
//}
//
///**
// 不透明类型
//
// 返回类型指定 为 Runnable，而不是Car，目的是让外界只能调用协议中的方法，Car内部的方法就无法调用
// */
//func get(_ type: Int) -> some Runnable {
////    if type == 0 {
////        return Person()
////    }
//    return Car()
//}
//
//var r1 = get(0)

//protocol Stackable {
//    associatedtype Element
////    associatedtype Element2
//    mutating func push(_ element: Element)
//    mutating func pop() -> Element
//    func top() -> Element
//    func size() -> Int
//}
//
//class StringStack: Stackable {
//    // 为关联类型设置真实类型，可以省略
//    //    typealias Element = String
//
//    func push(_ element: String) {
//
//    }
//
//    func pop() -> String {
//        ""
//    }
//
//    func top() -> String {
//        ""
//    }
//
//    func size() -> Int {
//        0
//    }
//}

//class Stack<E> {
//    var elements = [E]()
//
//    func push(_ element: E) {
//        elements.append(element)
//    }
//    func pop() -> E {
//        elements.removeLast()
//    }
//    func top() -> E {
//        elements.last!
//    }
//    func size() -> Int {
//        elements.count
//    }
//}
//
//var inStack = Stack<Int>()


//func swapValues<T>(_ a: inout T, _ b: inout T) {
//    (a, b) = (b, a)
//}
////var n1 = 10
////var n2 = 20
//var n1 = "jack"
//var n2 = "nick"
//swapValues(&n1, &n2)
//print(n1, n2)
//
//var fn: (inout Int, inout Int) -> () = swapValues
//
//func sum(_ a: Int, _ b: Int) -> Int {
//    a + b
//}

//enum SomeError: Error {
//    case illegalArg(String)
//    case outOfBounds(Int, Int)
//    case outOfMemory
//}
//
//@discardableResult
//func divide(_ num1: Int, _ num2: Int) throws -> Int {
//    if num2 == 0 {
//        throw SomeError.illegalArg("参数异常：0不能作为除数")
//    }
//    return num1 / num2
//}
//
//func open(_ filename: String) -> Int {
//    print("open")
//    return 0
//}
//
//func close(_ file: String) {
//    print("close")
//}
//
//func proccessFile(_ filename: String) throws {
//    defer {
//        close(filename)
//    }
//    let file = open(filename)
//    // 使用file
//    // ...
//    try divide(20, 0)
//
//}
//
//try? proccessFile("test.txt")
//
//struct MyError: Error {
//    var msg: String
//
//}
//
//enum SomeError: Error {
//    case illegalArg(String)
//    case outOfBounds(Int, Int)
//    case outOfMemory
//}
//
//@discardableResult
//func divide(_ num1: Int, _ num2: Int) throws -> Int {
//    if num2 == 0 {
////        throw SomeError.illegalArg("参数异常：0不能作为除数")
//        throw MyError(msg: "参数异常：0不能作为除数")
//    }
//    return num1 / num2
//}
//
//func test() throws {
//    do {
//        try divide(1, 0)
//    } catch let error as SomeError {
//        switch error {
//        case .illegalArg(let msg):
//            print(msg)
//        default:
//            print("其他")
//        }
//    }
//}
//
////try! test()
//print(try! divide(1, 1))

//func test1() throws {
//    do {
//        try divide(1, 0)
//    } catch let error as SomeError {
//        switch error {
//        case .illegalArg(let msg):
//            print(msg)
//        default:
//            print("其他")
//        }
//    }
//}


//try test()


//do {
//    let result = try divide(1, 0)
//    print(result)
//} catch let SomeError.illegalArg(msg) {
//    print(msg)
//} catch SomeError.outOfBounds(let size, let index) {
//    print(size, index)
//} catch SomeError.outOfMemory {
//    print("内存溢出")
//} catch {
//    print("其他错误")
//}
