
# wildcard *.c : 列出当前路径下所有c文件名
# patsubst %.c,%.o,xxx.c xcc.c : 将xxx.c xcc.c 的后缀c变成o
object := $(patsubst %.cpp,%.o,$(wildcard *.cpp))

all : $(object)

# $< : 表示第一个依赖文件
# $@ : 表示目标集
# 大部分编译器都支持 -M 选项 即自动寻找文件中包含的头文件
#	cc -M main.c
$(object): %.o: %.cpp
	cc -c $(CFLAGE) $< -o $@

%.d : %.cpp
	@set -e; rm -f $@; \
	$(cc) -MM $(CPPFLAGS) $< > $@.$$$$; \

# .PHONY 伪目标 只要有这个声明 不管是否有“clean”文件，要运行“clean”这个目标，只有“make clean”这样。
.PHONY : clean
clean:
	-rm -f *.o demo