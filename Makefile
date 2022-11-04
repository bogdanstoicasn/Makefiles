# compilator
CC = gcc

OUT1=infinite_product
OUT2=simple_queries
OUT3=gigel_and_the_checkboard
OUT4=another_queries
# flaguri pentru warninguri
CFLAGS = -Wall -Wextra -std=c99

# fisiere obiect create la build
OBJ1 = function_prod.o main_prod.o
OBJ2 = function_simple.o main_simple.o
OBJ3 = function_checkboard.o main_checkboard.o
OBJ4 = function_another.o main_another.o
#build program cu denumirea lab2 -- echivalent gcc function.o main.o -o lab2
build: function main
	$(CC) $(OBJ1) -o ./$(OUT1)
	$(CC) $(OBJ2) -o ./$(OUT2)
	$(CC) $(OBJ3) -o ./$(OUT3)
	$(CC) $(OBJ4) -o ./$(OUT4)

# compilare functii -- echivalent gcc --Wall -Wextra -c function.h function.c 
function: function_prod.h function_prod.c function_simple.h function_simple.c function_checkboard.h function_checkboard.c function_another.h function_another.c
	$(CC) $(CFLAGS) -c $@.c

# compilare functia mainn -- echivalent gcc --Wall -Wextra -c main.c 
main: main.c
	$(CC) $(CFLAGS) -c $@.c

#pentru rulare
#run: build
#	./$(OUT)

#clean
clean:
	rm -f *.o ./$(OUT1) ./$(OUT2) ./$(OUT3) ./$(OUT4)
