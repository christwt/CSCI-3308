# build an executable for Student example: Utilizing Variables and CPP flags
OBJS = Student.o Driver.o
CPPFLAGS = -std=c++11 -Wall
PROG = studs
CC = g++
LDFLAGS = #for any libraries

#HAVE TO USE TABS, IF NOT WILL GET AN ERROR.
#TARGET ":" DEPENDENCY
#THIS IS A COMMENT
#-o create object files and compile
#-c compile only

$(PROG): $(OBJS)			       		       
	$(CC) $(CPPFLAGS) -o $(PROG) $(LDFLAGS) $(OBJS)
Student.o: Student.cpp Student.h			
	$(CC) $(CPPFLAGS) -c Student.cpp
Driver.o: Driver.cpp
	$(CC) $(CPPFLAGS) -c Driver.cpp
clean:
	$(RM) $(PROG) $(OBJS)	#instead of rm, use macro
