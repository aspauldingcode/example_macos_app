CC = clang
FRAMEWORKS = -framework Cocoa
CFLAGS = -fobjc-arc $(FRAMEWORKS)

TARGET = HelloWorld
SOURCES = main.m AppDelegate.m
HEADERS = AppDelegate.h
OBJECTS = $(SOURCES:.m=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)
	mkdir -p $(TARGET).app/Contents/MacOS
	cp $(TARGET) $(TARGET).app/Contents/MacOS/
	cp Info.plist $(TARGET).app/Contents/

%.o: %.m $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
	rm -rf $(TARGET).app

test: all
	@pkill -f $(TARGET) || true
	@open $(TARGET).app 