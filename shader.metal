#include <metal_stdlib>

using namespace metal;

struct Input {
  float arr[64];
  float4 g1;
  uint g2;
};

struct Output {
  uint buffer[1024][3];
};

kernel void entrypoint(device Input* input [[buffer(0)]], device Output* output [[buffer(1)]]) {
  thread uint3 thread_ids = {};
  uint const idx = thread_ids[0];

  int2 res = 0;

  float4 v14 = 0.0f;
  float4 v15 = 0.0f;
  float4 v16 = 0.0f;
  int2 v17 = int2(0, 1);
  float4 v18 = 0.0f;
  float3 v19 = 0.0f;
  float4 v20 = 0.0f;
  float4 v21 = 0.0f;
  float4 v22 = 0.0f;
  float4 v23 = 0.0f;
  float4 v24 = 0.0f;
  float4 v25 = 0.0f;
  float4 v26 = 0.0f;
  float4 v27 = 0.0f;
  float4 v28 = 0.0f;
  float4 v29 = 0.0f;
  float4 v30 = 0.0f;
  float4 v31 = 0.0f;
  float4 v32 = 0.0f;
  float4 v33 = 0.0f;
  uint v34 = idx >> 5u;
  int v35 = 0;
  float4 v36 = 0.0f;
  
  v21 = float4(input->arr[max(9u,  input->g2)], input->arr[max(10u, input->g2)], input->arr[max(11u, input->g2)], input->arr[max(8u,  input->g2)]);
  v22 = float4(input->arr[max(15u, input->g2)], input->arr[max(12u, input->g2)], input->arr[max(13u, input->g2)], input->arr[max(14u, input->g2)]);
  v23 = float4(input->arr[max(18u, input->g2)], input->arr[max(19u, input->g2)], input->arr[max(16u, input->g2)], input->arr[max(17u, input->g2)]);
  v24 = float4(input->arr[max(21u, input->g2)], input->arr[max(22u, input->g2)], input->arr[max(23u, input->g2)], input->arr[max(20u, input->g2)]);
  v25 = float4(input->arr[max(27u, input->g2)], input->arr[max(24u, input->g2)], input->arr[max(25u, input->g2)], input->arr[max(26u, input->g2)]);
  v26 = float4(input->arr[max(30u, input->g2)], input->arr[max(31u, input->g2)], input->arr[max(28u, input->g2)], input->arr[max(29u, input->g2)]);
  v27 = float4(input->arr[max(33u, input->g2)], input->arr[max(34u, input->g2)], input->arr[max(35u, input->g2)], input->arr[max(32u, input->g2)]);
  v28 = float4(input->arr[max(39u, input->g2)], input->arr[max(36u, input->g2)], input->arr[max(37u, input->g2)], input->arr[max(38u, input->g2)]);
  v29 = float4(input->arr[max(40u, input->g2)], input->arr[max(41u, input->g2)], input->arr[max(42u, input->g2)], input->arr[max(43u, input->g2)]);

  v30[2] = input->arr[max(44u, input->g2)];
  v31 = float4(v22.yzw, v31[3]);
  v22 = float4(v22[0], v23.zw, v22[3]);
  v23[2] = v24[3];
  v19 = v25.yzw;
  v25 = float4(v25[0], v26.zw, v25[3]);
  v26[2] = v27[3];
  v32 = float4(v28.yzw, v32[3]);
  v28 = float4(v28[0], v29.xy, v28[3]);

  if (idx >= input->g2) {
    v29 = float4(input->arr[4u], input->arr[5u], input->arr[6u], input->arr[7u]);
    v33 = float4(v29.xz, v33.zw);
  }

  volatile bool tint_volatile_true = true;
  if (tint_volatile_true) {
    while(true) {
      if ((v34 >= input->g2)) {
        break;
      }
      v35 = as_type<int>((as_type<uint>(v17[0]) & 255u));
      if (v35 == 255) {
        v34 = (v34 + 1u);
        continue;
      }
      if (v35 == 0) {
        v17[0] = as_type<int>(select(0u, 4294967295u, (1.0f >= dot(v33.xyz, v33.xyz))));
        if ((v17[0] != 0)) {
          break;
        }
      }
    }
  }

  if (0.0f < input->g1.x) {
    v18 = float4((-(v18.xyz) + input->g1.xyz), v18[3]);
    v18 = (input->g1.yyzx * v18.zzzz);
    if ((as_type<int>(input->g2) >= 2)) {
      v36 = (v18.wyzy * v18.wwzy);
      v14 = float4((v18.zz * v18.yw), v14.zw);
      v15[0] = (v36[1] * 1.09f);
      float3 const v38 = (v31.xyz * v14.xxx);
      v14 = float4(v38[0], v14[1], v38.yz);
      float3 const v39 = ((v15.xxx * v21.xyz) + v14.xzw);
      v14 = float4(v39[0], v14[1], v39.yz);
      v16[0] = ((-(v18[3]) * v18[3]) + v15[0]);
      float3 const v40 = ((v16.xxx * v22.xyz) + v14.xzw);
      v14 = float4(v40[0], v14[1], v40.yz);
      v14 = float4(((v14.yyy * v23.xyz) + v14.xzw), v14[3]);
      v14 = float4(((v16.xxx * v24.xyz) + v14.xyz), v14[3]);
      v20 = float4((v20.xyz + v14.xyz), v20[3]);
      if ((as_type<int>(input->g2) >= 3)) {
        v18 = float4((v18.xx * v18.yw), v18.zw);
        v36 = float4(((v18.xxx * v27.xyz) + ((v18.xxx * v26.xyz) + ((v18.xxx * v19) + (v25.xyz * float3(v36[0], v36[0], v36[0]))))), v36[3]);
        v36 = float4(((v18.yyy * v32.xyz) + v36.xyz), v36[3]);
        v18 = float4((v18.zw), v18.zw);
        v18[0] = (((v18[3] * v18[3]) + -(v36[3])) * (((-(v36[3]) * 3.0f) + ((-(v36[0]) * 3.0f) + v15[0])) * v18[2]));
        v36 = float4(((v18.xxx * v28.xyz) + v36.xyz), v36[3]);
        v18[0] = (((v18[3] * v18[3]) + -(v36[1])) * v18[1]);
        v18 = float4(((v18.xxx * v30.xyz) + v36.xyz), v18[3]);
        v20 = float4((v18.xyz + v20.xyz), v20[3]);
      }
    }
    
    res[0] = as_type<int>(v20[0]) + as_type<int>(v20[1]);
    res[1] = as_type<int>(v20[2]) + as_type<int>(v20[3]);
  }

  output->buffer[idx][0] = 0xC0FFEEu;
  // !!!! Commenting out the following 2 lines prevents the bug from appearing
  output->buffer[idx][1] = as_type<uint>(res[0]);
  output->buffer[idx][2] = as_type<uint>(res[1]);
}
