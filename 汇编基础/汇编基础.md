#### 程序的本质
- 软件/程序执行过程:  程序/软件（硬盘）-> 内存 ->  CPU -> 控制计算机的设备做事情
- CPU 里有寄存器、运算器、控制器
- 通常，CPU会先将内存中的数据存储到寄存器中，然后再对寄存器中的数据进行运算

#### 编程语言的发展
- 高级语言 -> 汇编语言 -> 机器语言 -> 计算机
- 汇编语言与机器语言一一对应，每一条机器指令都有一条对应的汇编语言

#### 汇编语言的种类
- 8086汇编
- x86汇编
- x64汇编
- ARM汇编（嵌入式、移动设备）

#### 书写格式
- Intel：Windows派系
- AT&T: Unix派系
- 作为iOS工程师
	- AT&T汇编 -> iOS 模拟器
	- ARM汇编 -> iOS 真机设备

#### 常见汇编指令
<style>
table th:first-of-type {
	width: 100px;
}
table th:nth-of-type(2) {
	width: 120px;
}
table th:nth-of-type(3) {
	width: 200px;
}
table th:nth-of-type(4) {
	width: 400px;
}
</style>

项目 | AT&T | intel | 说明
:-: | :-: | :-: | :-: | :-:
寄存器命名 | %rax | rax | | 
操作数顺序 | movq %rax, %rdx | mov rdx, rax | 将rax赋值给rdx |
常数\立即数 | movq $3, %rax <br> movq $0x10, %rax | mov rax, 3 <br> mov rax, 0x10 | 将3赋值给rax <br> 将0x10赋值给rax |
内存赋值 | movq $0xa, 0x1ff7(%rip)| mov qword ptr [rip + 0x1ff7] | 将0xa赋值给地址为rip + 0x1ff7 的内存空间 <br> 注意：rip存储的是指令的地址，CPU要执行的下一条指令地址就存储在rip中 |
取内存地址 | leaq -0x18(%rbp), %rax | lea rax, [rbp - 0x18] | 将[rbp - 0x18]这个地址赋值给rax
jmp指令 | jmp *%rdx <br> jmp 0x4001002 <br> jmp *(%rax) | jmp rdx <br> jmp 0x4001002 <br> jmp [rax] | call 和 jmp 写法类似 |
操作数长度 | movl %eax, %edx <br> movb $10, %al <br> leaw 0x10(%dx), %ax | mov edx, eax <br> mov al, $10 <br> mov ax, [edx + 0x10] | b = byte(8-bit) <br> s = short(16-bit integer or 32-bit floating point) <br> l = long(32-bit integer or 64-bit floating point) <br> q = quad(64 bit) <br> t = ten bytes(80-bit floating point)|

#### 寄存器
- 有常用的16个寄存器：rax rbx，rdx....
- 寄存器的具体用途
	- rax、rdx 常作为函数返回值使用
	- rdi、rsi、rcx、r8、r9 等寄存器常用于存放函数参数
	- rsp、rbp 用于栈操作
	- rip 作为指令指针
		- 存储着CPU下一条要执行的指令的地址
		- 一旦CPU读取一条指令，rip会自动指向下一条指令（存储下一条指令的地址）

#### lldb常用指令
- 读取寄存器的值
	- register read/格式
	- register read/x
- 修改寄存器的值
	- register write 寄存器名称 数值
	- register write rax 0
- 读取内存中的值
	- x/数量-格式-字节大小 内存地址
	- x/3xw 0x0000010
- 修改内存中的值
	- memory write 内存地址 数值
	- memory write 0x0000010 10
- 格式
	- x是16进制，f是浮点，d是十进制
- 字节大小
	- b - byte 一字节
	- h - half word 2字节
	- w - word 4字节
	- g - giant word 8字节
- expression表达式
- po 表达式
- 调试指令
	- n: 单步运行，把子函数当做一个整体一步执行（源码级别）
	- s：单步运行，遇到子函数会进入子函数（源码级别）
	- ni：单步运行，把子函数当做一个整体执行（汇编级别）
	- si：单步运行，遇到子函数会进入子函数（汇编级别）
	- finish： 直接执行完当前函数的所有代码，返回到上一个函数（遇到断点会卡住）

#### 规律
- 内存地址格式为：0x4bdc（%rip），一般是全局变量，全局区（数据段）
- 内存地址格式为： -0x78（%rbp）, 一般是局部变量，栈空间
- 内存地址格式为：0x10（%rax），一般是堆空间