#include <metal_stdlib>

using namespace metal;

kernel void entrypoint(
  device uint* output [[buffer(0)]],
  uint3 id [[thread_position_in_grid]])
{
  // We launch a single threadgroup with a size of (1, 1, 1), so the only id.x
  // value we should see here is `0`.
  // This means that `start` will always be `0`, and `end` should be `8`.
  uint start = id.x * 8u;
  uint end = min((start + 8u), 2000u);

  // Both the `select` and `if-else` versions fail.
  // Changing the numbers to `255` or smaller fixes the problem.
#if 1
  // `end > 1000u` should always be `false`, so the result of the `select`
  // should always be `0`.
  *output = select(0u, (end - 1000u), (end > 1000u));
#else
  // `end > 1000u` should always be `false`, so we should go into the `else`
  // and write `0u` to `output`.
  if (end > 1000u) {
    *output = end - 1000u;
  } else {
    *output = 0u;
  }
#endif
}
