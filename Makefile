.DEFAULT_GOAL := all

.PHONY: all build install clean run

CC = g++
SRC_DIR = src
SRC = $(SRC_DIR)/main.cpp
TARGET = main
BUILD = build

all: build run

build:
	mkdir -p $(BUILD)
	$(CC) -o $(BUILD)/$(TARGET) $(SRC)

run:
	./$(BUILD)/$(TARGET)

install:
	# Add install commands here

clean:
	rm -rf $(BUILD)
