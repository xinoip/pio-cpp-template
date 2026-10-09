.PHONY: *

all: debug

debug:
	cmake --preset debug
	cmake --build --preset debug --parallel
	./build/bin/c_math_example

sanitize:
	cmake --preset sanitize
	cmake --build --preset sanitize --parallel
	./build/sanitize/bin/c_math_example

valgrind: debug
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --error-exitcode=1 ./build/bin/c_math_example

release:
	cmake --preset release
	cmake --build --preset release --parallel --target package

clean:
	rm -rf build
