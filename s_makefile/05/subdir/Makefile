# 嵌套makefile

# wildcard *.c : 列出当前路径下所有c文件名
# patsubst %.c,%.o,xxx.c xcc.c : 将xxx.c xcc.c 的后缀c变成o
object := $(patsubst %.cpp,%.o,$(wildcard *.cpp))

# 通配符: *,?,~
demo : $(object)
	cc -o demo $(object)
# 由01的格式更改为自动推导 demo编译.o文件时会自动查找下面
# makefile自动把依赖文件加入
main.o : demo.h
demo.o: demo.h

.PHONY : clean
clean:
	-rm -f *.o demo