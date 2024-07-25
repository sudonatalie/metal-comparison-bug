#import <Metal/Metal.h>

bool run() {
  id<MTLDevice> device = MTLCreateSystemDefaultDevice();

  NSError *error = nil;
  NSURL *url = [NSURL fileURLWithPath:@"shader.metallib"];
  id<MTLLibrary> library = [device newLibraryWithURL:url error:&error];
  if (library == nil) {
    NSLog(@"Failed to load the library.");
    return false;
  }

  id<MTLFunction> entrypoint = [library newFunctionWithName:@"tint_symbol_11"];
  if (entrypoint == nil) {
    NSLog(@"Failed to find the entrypoint function.");
    return false;
  }

  id<MTLComputePipelineState> pipeline = [device newComputePipelineStateWithFunction:entrypoint error:&error];
  if (pipeline == nil) {
    NSLog(@"Failed to created pipeline state object, error %@.", error);
    return false;
  }

  id<MTLCommandQueue> command_queue = [device newCommandQueue];
  if (command_queue == nil) {
    NSLog(@"Failed to create the command queue.");
    return false;
  }

  id<MTLBuffer> globals = [device newBufferWithLength:65536 options:MTLResourceStorageModeShared];
  id<MTLBuffer> input = [device newBufferWithLength:65536 options:MTLResourceStorageModeShared];
  id<MTLBuffer> output = [device newBufferWithLength:65536 options:MTLResourceStorageModeShared];

  id<MTLCommandBuffer> commandBuffer = [command_queue commandBuffer];
  if (commandBuffer == nil) {
    NSLog(@"Failed to create the command buffer.");
    return false;
  }

  id<MTLComputeCommandEncoder> computeEncoder = [commandBuffer computeCommandEncoder];
  if (computeEncoder == nil) {
    NSLog(@"Failed to create the command encoder.");
    return false;
  }

  MTLSize gridSize = MTLSizeMake(1, 1, 1);
  MTLSize groupSize = MTLSizeMake(1024, 1, 1);
  [computeEncoder setComputePipelineState:pipeline];
  [computeEncoder setBuffer:globals offset:0 atIndex:0];
  [computeEncoder setBuffer:input offset:0 atIndex:2];
  [computeEncoder setBuffer:output offset:0 atIndex:1];
  [computeEncoder dispatchThreads:gridSize threadsPerThreadgroup:groupSize];
  [computeEncoder endEncoding];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  uint32_t *result = output.contents;
  printf("output = %#x\n", result[0]);
  return (*result == 0xC0FFEE);
}

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    if (!run()) {
      return 1;
    }
  }
  return 0;
}
