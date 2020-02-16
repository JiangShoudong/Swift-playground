//: Playground - noun: a place where people can play
// shift + cmd + Enter 快速运行playground
import UIKit
import PlaygroundSupport
let view = UIView()
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.backgroundColor = .red
PlaygroundPage.current.liveView = view

var str = "Hello, playground"
// 一、基础语法：
    //1、 类型标注（很少写类型标注）
var welcomeMessage: String
    //一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注：
var red, blue, greed: String?
red = "红色"
blue = "蓝色"
    //2、常量与变量的命名：常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
    //注意： 如果你需要使用与Swift保留关键字相同的名称作为常量或者变量名，你可以使用反引号（`）将关键字包围的方式将其作为名字使用。无论如何，你应当避免使用关键字作为常量或变量名，除非你别无选择。
    //3、整数范围
    //注意：尽量不要使用UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用Int，即使你要存储的值已知是非负的。统一使用Int可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断，请参考类型安全和类型推断。
let minValue = Int.min
let maxValue = Int.max
    //3、类型安全（type safe）和类型推断(type inference)：
// 当你声明常量或者变量并赋初值的时候类型推断非常有用。当你在声明常量或者变量的时候赋给它们一个字面量（literal value 或 literal）即可触发类型推断。（字面量就是会直接出现在你代码中的值，比如 42 和 3.14159 。）
// 如果你没有给浮点字面量标明类型，Swift 会推断你想要的是 Double：
let pi = 3.14159
// pi 会被推测为 Double 类型

//如果表达式中同时出现了整数和浮点数，会被推断为 Double 类型：
let anotherPi = 3 + 0.14159
// anotherPi 会被推测为 Double 类型

    // 4、数值型字面量
/*
 整数字面量可以被写作：
 
 一个十进制数，没有前缀
 一个二进制数，前缀是0b
 一个八进制数，前缀是0o
 一个十六进制数，前缀是0x
 */

let decimalInteger = 17
let binaryInteger = 0b10001       // 二进制的17
let octalInteger = 0o21           // 八进制的17
let hexadecimalInteger = 0x11     // 十六进制的17
/*
 如果一个十进制数的指数为 exp，那这个数相当于基数和10^exp的乘积：
 
 1.25e2 表示 1.25 × 10^2，等于 125.0。
 1.25e-2 表示 1.25 × 10^-2，等于 0.0125。
 如果一个十六进制数的指数为exp，那这个数相当于基数和2^exp的乘积：
 
 0xFp2 表示 15 × 2^2，等于 60.0。
 0xFp-2 表示 15 × 2^-2，等于 3.75。
*/
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*
    数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量：
 */

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

    // 5、整数转换
/*
    SomeType(ofInitialValue) 是调用 Swift 构造器并传入一个初始值的默认方法。在语言内部，UInt16 有一个构造器，可以接受一个UInt8类型的值，所以这个构造器可以用现有的 UInt8 来创建一个新的 UInt16。注意，你并不能传入任意类型的值，只能传入 UInt16 内部有对应构造器的值。不过你可以扩展现有的类型来让它可以接收其他类型的值（包括自定义类型），请参考扩展。
 */
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

    // 6、整数和浮点数转换
/*
    常量 three 的值被用来创建一个 Double 类型的值，所以加号两边的数类型须相同。如果不进行转换，两者无法相加。
 */
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi1 = Double(three) + pointOneFourOneFiveNine
// pi 等于 3.14159，所以被推测为 Double 类型

/*
    浮点数到整数的反向转换同样行，整数类型可以用 Double 或者 Float 类型来初始化：
 */
let integerPi = Int(pi1)
// integerPi 等于 3，所以被推测为 Int 类型;
// 当用这种方式来初始化一个新的整数值时，浮点值会被截断。也就是说 4.75 会变成 4，-3.9 会变成 -3。
//注意： 结合数字类常量和变量不同于结合数字类字面量。字面量3可以直接和字面量0.14159相加，因为数字字面量本身没有明确的类型。它们的类型只在编译器需要求值的时候被推测。
    // 7、布尔值（Bool）:
/*
    初始化常量或者变量的时候如果所赋的值类型已知，就可以触发类型推断，这让 Swift 代码更加简洁并且可读性更高。
 */
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// 输出 "Eww, turnips are horrible."
    // 8、元组：
/*
    元组内的值可以是任意类型，并不要求是相同类型。
 */
let http404Error = (404, "Not Found")

/*
 你可以将一个元组的内容分解（decompose）成单独的常量和变量，然后你就可以正常使用它们了
 */
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
/*
 此外，你还可以通过下标来访问元组中的单个元素，下标从零开始：
 */
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")
/*
 你可以在定义元组的时候给单个元素命名,给元组中的元素命名后，你可以通过名字来获取这些元素的值：
 */
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")
// 作为函数返回值时，元组非常有用
// 注意： 元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组。请参考类和结构体。
