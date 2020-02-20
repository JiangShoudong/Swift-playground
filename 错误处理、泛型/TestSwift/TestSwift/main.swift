//
//  main.swift
//  TestSwift
//
//  Created by JIANG SHOUDONG on 2020/2/19.
//  Copyright © 2020 Napoleon Jiang. All rights reserved.
//

import Foundation


protocol Runnable {
    associatedtype Speed
    var speed: Speed { get }
}

class Person: Runnable {
    var speed: Double { 0.0 }
}

class Car: Runnable {
    var speed: Int { 0 }
}

/**
 不透明类型
 
 返回类型指定 为 Runnable，而不是Car，目的是让外界只能调用协议中的方法，Car内部的方法就无法调用
 */
func get(_ type: Int) -> some Runnable {
//    if type == 0 {
//        return Person()
//    }
    return Car()
}

var r1 = get(0)

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
