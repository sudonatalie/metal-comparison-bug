# Reproducer for a Metal bug affecting comparison

See `shader.metal` for the MSL code, along with comments prefixed by `!!!!`
for alternatives that do not exhibit the problem.

This issue was originally reported to Chrome WebGPU at: crbug.com/349653205

## Reproduced on:

```
 macOS: Sonoma 14.5
 Model Name: MacBook Pro
 Chip: Apple M1 Pro
```

Does not reproduce on Intel or AMD GPUs running macOS.

## Building and Running

```bash
make
./metal-comparison-bug
```

This should produce:
```
output = 0xc0ffee
```

But on Apple M1 running macOS 14.5 instead produces:
```
output = 0
```
