metal-comparison-bug: main.m shader.metallib
	clang++ -fmodules -framework CoreGraphics main.m -o $@

shader.metallib: shader.metal
	xcrun metal shader.metal -o $@

clean:
	rm -f metal-comparison-bug shader.metallib

.PHONY: clean
