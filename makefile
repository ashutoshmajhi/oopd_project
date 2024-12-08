CXX = g++
CXXFLAGS = -Wall -std=c++17
SRC = main.cpp user.cpp wifi4.cpp wifi5.cpp wifi6.cpp wifi_simulation.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = wifi_simulator

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
