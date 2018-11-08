miditones: miditones-src/miditones.c
	gcc -O2 -o miditones miditones-src/miditones.c 

clean:
	rm -f miditones
