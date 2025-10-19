## 实践-将t113的lvgl更改为交叉编译器编译
`
SRCDIRS   =  $(shell find . -maxdepth 1 -type d)
`

该命令的功能是：在当前目录（.）中，查找所有深度为 1（即仅当前目录的直接子目录，不包括子目录的子目录）的目录（-type d），并返回这些目录的路径列表。

`
MAINSRC = $(foreach dir,$(SRCDIRS),$(wildcard $(dir)/*.c))
`

这行代码的作用是收集指定目录列表中所有的 .c 源文件，并将它们的路径存储到变量 MAINSRC 中。

`$(foreach var,list,text)`：Makefile 的循环函数，功能是遍历 list 中的每个元素，将其赋值给变量 var，然后执行 text 部分的操作，最终将所有结果拼接成一个字符串返回。