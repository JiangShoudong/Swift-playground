// shift + cmd + Enter 快速运行playground
/*:
  playground 支持markup 语法（类似于markdown 语法）
 # 一级标题
 ## 无序列表
  - First
  - Second
 ## 有序列表
 1. First
 2. Second
 
 ## 笔记
 > this is a note
 ---
 ## 图片
 ![Logo](logo.png "Local image")
 ## 链接
 [苹果官方](https://www.apple.com)
 ## 粗体/斜体
 这是**Bold**，这是*Italic*
 */
//: [下一页](@next)

import UIKit
import PlaygroundSupport
let view = UIView()
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.backgroundColor = .red
PlaygroundPage.current.liveView = view
