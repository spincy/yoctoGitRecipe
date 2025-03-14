# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall -DUSE_SYSCALL -DUSE_FILESYS 

# the name to use for both the target source file, and the output file:
TARGET = userprog

all: $(TARGET)

$(TARGET): $(TARGET).c
	${CC} $(CFLAGS) -o $(TARGET) $(LDFLAGS)  $(TARGET).c

clean:
	rm  -f $(TARGET)

install:
	install -d $(DESTDIR)/ 
	install -m 755 $(TARGET) $(DESTDIR)/

uninstall:
	rm -f $(DESTDIR)/$(TARGET)
