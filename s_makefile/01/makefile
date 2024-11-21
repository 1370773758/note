object = main.o demo1.o

demo: $(object)
	cc -o demo $(object)

main.o : main.cpp demo1.h
	cc -c main.cpp

demo1.o: demo1.cpp demo1.h
	cc -c demo1.cpp

clean:
	rm demo $(object)