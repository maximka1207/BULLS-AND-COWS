.PHONY: clean all run

BIN_DIR = ./bin
BUILD_DIR = ./bin
SRC_DIR = ./src
TEST_DIR = ./test

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/main.o $(BUILD_DIR)/functions.o
	g++ -Wall $(BUILD_DIR)/main.o $(BUILD_DIR)/functions.o -o $(BIN_DIR)/main

$(BUILD_DIR)/main.o:
	g++ -Wall -c $(SRC_DIR)/main.cpp -o $(BUILD_DIR)/main.o

$(BUILD_DIR)/functions.o:
	g++ -Wall -c $(SRC_DIR)/functions.cpp -o $(BUILD_DIR)/functions.o



test: $(BUILD_DIR)/test.o $(BUILD_DIR)/functions.o
	g++ -Wall $(BUILD_DIR)/test.o $(BUILD_DIR)/functions.o -o $(BIN_DIR)/test

$(BUILD_DIR)/test.o:
	g++ -Wall -c $(TEST_DIR)/test.cpp -o $(BUILD_DIR)/test.o
	

run: 
	./bin/main

clean:
	rm -f build/*.o
	rm -f bin/main
