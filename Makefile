# makefile for learning make project

## in this section we define the Varibles
## the general form in VARIABLE = value
CXX = g++
CXXFLAGS = 	-Wall -o3 -g


## Target - Executable
## The first line is defining target's dependencies
## The second line is the command that generates the Target, this line must begin with a <TAB>
main: main.o Point.o Rectangle.o
	$(CXX) $(CXXFLAGS) -o main main.o Rectangle.o Point.o

## Here the target is object file
## In the dependencies list all the .cpp files and the .h files it depengds on
## The next line is optional, the makefile is smart it will know how to generate certain files no need to specify how to generate them.
main.o: main.cpp Point.h Rectangle.h
	$(CXX) $(CXXFLAGS) -c main.cpp

Point.o: Point.h

Rectangle.o: Rectangle.h Point.h
