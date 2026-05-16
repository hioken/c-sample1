CC := gcc
CFLAGS := -Wall -Wextra

app: main.o math_tool.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c math_tool.h
	$(CC) $(CFLAGS) -c $<

math_tool.o: math_tool.c math_tool.h
	$(CC) $(CFLAGS) -c $<

.PHONY: clean
clean:
	rm -f app *.o