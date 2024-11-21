object = main.o demo1.o

# makefile命令以 tab 开始 使用空格tab也不会被识别成命令
demo: $(object)
	cc -o demo $(object)
# 由01的格式更改为自动推导 demo编译.o文件时会自动查找下面
# makefile自动把依赖文件加入
main.o : demo1.h
demo1.o: demo1.h
# 或者使用下面风格
#main.o demo1.o : demo1.h

# .PHONY 伪目标
.PHONY : clean
# 相比01 rm前面加入 - 为了出错不管 继续运行后面内容
clean:
	-rm demo $(object)