SRC := src/driver.cpp src/gui.cpp src/tree.cpp src/credentials.cpp src/options.cpp src/popup.cpp
INC := ./headers/
NAME := gClassCatcher
CC := g++
FLAGS := -Wall -g
PKG := `pkg-config gtkmm-3.0 --cflags --libs`

main:
	${CC} ${FLAGS} ${SRC} -I${INC} -o ${NAME} ${PKG}

clean:
	rm -f */*~ *~
