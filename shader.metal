/* Dumped generated MSL */

                #ifdef __clang__
                #pragma clang diagnostic ignored "-Wall"
                #endif
            #include <metal_stdlib>

using namespace metal;

template<typename T, size_t N>
struct tint_array {
    const constant T& operator[](size_t i) const constant { return elements[i]; }
    device T& operator[](size_t i) device { return elements[i]; }
    const device T& operator[](size_t i) const device { return elements[i]; }
    thread T& operator[](size_t i) thread { return elements[i]; }
    const thread T& operator[](size_t i) const thread { return elements[i]; }
    threadgroup T& operator[](size_t i) threadgroup { return elements[i]; }
    const threadgroup T& operator[](size_t i) const threadgroup { return elements[i]; }
    T elements[N];
};

#define TINT_ISOLATE_UB(VOLATILE_NAME) \
  volatile bool VOLATILE_NAME = true; \
  if (VOLATILE_NAME)

struct tint_private_vars_struct {
  uint3 tint_symbol_7;
};

struct tint_symbol_46 {
  /* 0x0000 */ tint_array<uint, 1> arr;
};

struct TintArrayLengths {
  /* 0x0000 */ tint_array<uint4, 1> array_lengths;
};

struct tint_symbol {
  /* 0x0000 */ float4 tint_symbol_1;
  /* 0x0010 */ uint tint_symbol_2;
  /* 0x0014 */ tint_array<int8_t, 12> tint_pad;
};

struct tint_symbol_3 {
  /* 0x0000 */ tint_array<uint, 3> tint_symbol_4;
};

struct tint_symbol_5 {
  /* 0x0000 */ tint_array<tint_symbol_3, 1> tint_symbol_6;
};

void tint_symbol_11_inner(uint3 tint_symbol_12, thread tint_private_vars_struct* const tint_private_vars, device tint_array<uint, 1>* const tint_symbol_41, const constant TintArrayLengths* const tint_symbol_42, const constant tint_symbol* const tint_symbol_43, device tint_symbol_5* const tint_symbol_44) {
  int4 tint_symbol_13 = 0;
  float4 tint_symbol_14 = 0.0f;
  float4 tint_symbol_15 = 0.0f;
  float4 tint_symbol_16 = 0.0f;
  int2 tint_symbol_17 = 0;
  float4 tint_symbol_18 = 0.0f;
  float3 tint_symbol_19 = 0.0f;
  float4 tint_symbol_20 = 0.0f;
  float4 tint_symbol_21 = 0.0f;
  float4 tint_symbol_22 = 0.0f;
  float4 tint_symbol_23 = 0.0f;
  float4 tint_symbol_24 = 0.0f;
  float4 tint_symbol_25 = 0.0f;
  float4 tint_symbol_26 = 0.0f;
  float4 tint_symbol_27 = 0.0f;
  float4 tint_symbol_28 = 0.0f;
  float4 tint_symbol_29 = 0.0f;
  float4 tint_symbol_30 = 0.0f;
  float4 tint_symbol_31 = 0.0f;
  float4 tint_symbol_32 = 0.0f;
  float4 tint_symbol_33 = 0.0f;
  uint tint_symbol_34 = 0u;
  int tint_symbol_35 = 0;
  float4 tint_symbol_36 = 0.0f;
  uint const tint_symbol_37 = (*(tint_private_vars)).tint_symbol_7[0];
  tint_symbol_17 = int2(0, 1);
  tint_symbol_34 = (tint_symbol_37 >> 5u);
  if ((tint_symbol_13[1] == 0)) {
    tint_symbol_21 = float4(as_type<float>((*(tint_symbol_41))[min(9u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(10u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(11u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(8u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_22 = float4(as_type<float>((*(tint_symbol_41))[min(15u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(12u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(13u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(14u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_23 = float4(as_type<float>((*(tint_symbol_41))[min(18u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(19u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(16u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(17u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_24 = float4(as_type<float>((*(tint_symbol_41))[min(21u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(22u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(23u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(20u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_25 = float4(as_type<float>((*(tint_symbol_41))[min(27u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(24u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(25u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(26u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_26 = float4(as_type<float>((*(tint_symbol_41))[min(30u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(31u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(28u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(29u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_27 = float4(as_type<float>((*(tint_symbol_41))[min(33u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(34u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(35u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(32u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_28 = float4(as_type<float>((*(tint_symbol_41))[min(39u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(36u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(37u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(38u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_29 = float4(as_type<float>((*(tint_symbol_41))[min(40u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(41u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(42u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(43u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_30[2] = as_type<float>((*(tint_symbol_41))[min(44u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]);
    tint_symbol_31 = float4(tint_symbol_22.yzw, tint_symbol_31[3]);
    tint_symbol_22 = float4(tint_symbol_22[0], tint_symbol_23.zw, tint_symbol_22[3]);
    tint_symbol_23[2] = tint_symbol_24[3];
    tint_symbol_19 = tint_symbol_25.yzw;
    tint_symbol_25 = float4(tint_symbol_25[0], tint_symbol_26.zw, tint_symbol_25[3]);
    tint_symbol_26[2] = tint_symbol_27[3];
    tint_symbol_32 = float4(tint_symbol_28.yzw, tint_symbol_32[3]);
    tint_symbol_28 = float4(tint_symbol_28[0], tint_symbol_29.xy, tint_symbol_28[3]);
  }
  if ((tint_symbol_37 >= (*(tint_symbol_43)).tint_symbol_2)) {
    tint_symbol_29 = float4(as_type<float>((*(tint_symbol_41))[min(4u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(5u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(6u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]), as_type<float>((*(tint_symbol_41))[min(7u, (((*(tint_symbol_42)).array_lengths[0u][0u] / 4u) - 1u))]));
    tint_symbol_33 = float4(tint_symbol_29.xz, tint_symbol_33.zw);
  }
  TINT_ISOLATE_UB(tint_volatile_true) while(true) {
    if ((tint_symbol_34 >= (*(tint_symbol_43)).tint_symbol_2)) {
      break;
    }
    tint_symbol_35 = as_type<int>((as_type<uint>(tint_symbol_17[0]) & 255u));
    if ((tint_symbol_35 == 255)) {
      tint_symbol_34 = (tint_symbol_34 + 1u);
      continue;
    }
    if ((tint_symbol_35 == 0)) {
      tint_symbol_17[0] = as_type<int>(select(0u, 4294967295u, (1.0f >= dot(tint_symbol_33.xyz, tint_symbol_33.xyz))));
      if ((tint_symbol_17[0] != 0)) {
        break;
      }
    }
  }
  if ((0.0f < (*(tint_symbol_43)).tint_symbol_1[0])) {
    tint_symbol_18 = float4((-(tint_symbol_18.xyz) + (*(tint_symbol_43)).tint_symbol_1.xyz), tint_symbol_18[3]);
    tint_symbol_18 = ((*(tint_symbol_43)).tint_symbol_1.yyzx * tint_symbol_18.zzzz);
    if ((as_type<int>((*(tint_symbol_43)).tint_symbol_2) >= 2)) {
      tint_symbol_36 = (tint_symbol_18.wyzy * tint_symbol_18.wwzy);
      tint_symbol_14 = float4((tint_symbol_18.zz * tint_symbol_18.yw), tint_symbol_14.zw);
      tint_symbol_15[0] = (tint_symbol_36[1] * 1.092548370361328125f);
      float3 const tint_symbol_38 = (tint_symbol_31.xyz * tint_symbol_14.xxx);
      tint_symbol_14 = float4(tint_symbol_38[0], tint_symbol_14[1], tint_symbol_38.yz);
      float3 const tint_symbol_39 = ((tint_symbol_15.xxx * tint_symbol_21.xyz) + tint_symbol_14.xzw);
      tint_symbol_14 = float4(tint_symbol_39[0], tint_symbol_14[1], tint_symbol_39.yz);
      tint_symbol_16[0] = ((-(tint_symbol_18[3]) * tint_symbol_18[3]) + tint_symbol_15[0]);
      float3 const tint_symbol_40 = ((tint_symbol_16.xxx * tint_symbol_22.xyz) + tint_symbol_14.xzw);
      tint_symbol_14 = float4(tint_symbol_40[0], tint_symbol_14[1], tint_symbol_40.yz);
      tint_symbol_14 = float4(((tint_symbol_14.yyy * tint_symbol_23.xyz) + tint_symbol_14.xzw), tint_symbol_14[3]);
      tint_symbol_14 = float4(((tint_symbol_16.xxx * tint_symbol_24.xyz) + tint_symbol_14.xyz), tint_symbol_14[3]);
      tint_symbol_20 = float4((tint_symbol_20.xyz + tint_symbol_14.xyz), tint_symbol_20[3]);
      if ((as_type<int>((*(tint_symbol_43)).tint_symbol_2) >= 3)) {
        tint_symbol_18 = float4((tint_symbol_18.xx * tint_symbol_18.yw), tint_symbol_18.zw);
        tint_symbol_36 = float4(((tint_symbol_18.xxx * tint_symbol_27.xyz) + ((tint_symbol_18.xxx * tint_symbol_26.xyz) + ((tint_symbol_18.xxx * tint_symbol_19) + (tint_symbol_25.xyz * float3(tint_symbol_36[0], tint_symbol_36[0], tint_symbol_36[0]))))), tint_symbol_36[3]);
        tint_symbol_36 = float4(((tint_symbol_18.yyy * tint_symbol_32.xyz) + tint_symbol_36.xyz), tint_symbol_36[3]);
        tint_symbol_18 = float4((tint_symbol_18.zw * float2(-1.44530570507049560547f, 0.59004360437393188477f)), tint_symbol_18.zw);
        tint_symbol_18[0] = (((tint_symbol_18[3] * tint_symbol_18[3]) + -(tint_symbol_36[3])) * (((-(tint_symbol_36[3]) * 3.0f) + ((-(tint_symbol_36[0]) * 3.0f) + tint_symbol_15[0])) * tint_symbol_18[2]));
        tint_symbol_36 = float4(((tint_symbol_18.xxx * tint_symbol_28.xyz) + tint_symbol_36.xyz), tint_symbol_36[3]);
        tint_symbol_18[0] = (((tint_symbol_18[3] * tint_symbol_18[3]) + -(tint_symbol_36[1])) * tint_symbol_18[1]);
        tint_symbol_18 = float4(((tint_symbol_18.xxx * tint_symbol_30.xyz) + tint_symbol_36.xyz), tint_symbol_18[3]);
        tint_symbol_20 = float4((tint_symbol_18.xyz + tint_symbol_20.xyz), tint_symbol_20[3]);
      }
    }
    tint_symbol_18 = fmax(tint_symbol_20, float4(0.0f));
    tint_symbol_13[0] = as_type<int>((as_type<uint>(as_type<int>(tint_symbol_18[0])) + as_type<uint>(as_type<int>(tint_symbol_18[1]))));
    tint_symbol_13[1] = as_type<int>((as_type<uint>(as_type<int>(tint_symbol_18[2])) + as_type<uint>(as_type<int>(tint_symbol_18[3]))));
  }
  (*(tint_symbol_44)).tint_symbol_6[min(tint_symbol_37, ((((*(tint_symbol_42)).array_lengths[0u][1u] - 0u) / 12u) - 1u))].tint_symbol_4[0] = 0xC0FFEEu;
  // !!!! Commenting out the following 2 lines prevents the bug from appearing
  (*(tint_symbol_44)).tint_symbol_6[min(tint_symbol_37, ((((*(tint_symbol_42)).array_lengths[0u][1u] - 0u) / 12u) - 1u))].tint_symbol_4[1] = as_type<uint>(tint_symbol_13[0]);
  (*(tint_symbol_44)).tint_symbol_6[min(tint_symbol_37, ((((*(tint_symbol_42)).array_lengths[0u][1u] - 0u) / 12u) - 1u))].tint_symbol_4[2] = as_type<uint>(tint_symbol_13[1]);
}

kernel void tint_symbol_11(device tint_symbol_46* tint_symbol_45 [[buffer(0)]], const constant TintArrayLengths* tint_symbol_47 [[buffer(30)]], const constant tint_symbol* tint_symbol_48 [[buffer(2)]], device tint_symbol_5* tint_symbol_49 [[buffer(1)]], uint3 tint_symbol_12 [[thread_position_in_grid]]) {
  thread tint_private_vars_struct tint_private_vars = {};
  tint_symbol_11_inner(tint_symbol_12, &(tint_private_vars), &((*(tint_symbol_45)).arr), tint_symbol_47, tint_symbol_48, tint_symbol_49);
  return;
}
