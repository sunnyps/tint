SKIP: FAILED



Validation Failure:
struct MyStruct {
  float f1;
};

int ret_i32() {
  return 1;
}
uint ret_u32() {
  return 1u;
}
float ret_f32() {
  return 1.0f;
}
MyStruct ret_MyStruct() {
  const MyStruct tint_symbol_1 = {0.0f};
  return tint_symbol_1;
}
float[10] ret_MyArray() {
  const float tint_symbol_2[10] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
  return tint_symbol_2;
}
void var_decls() {
  int v1 = 1;
  uint v2 = 1u;
  float v3 = 1.0f;
  int3 v4 = int3(1, 1, 1);
  uint3 v5 = uint3(1u, 1u, 1u);
  float3 v6 = float3(1.0f, 1.0f, 1.0f);
  float3x3 v7 = float3x3(v6, v6, v6);
  MyStruct v8 = {1.0f};
  float v9[10] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
  int v10 = ret_i32();
  uint v11 = ret_u32();
  float v12 = ret_f32();
  MyStruct v13 = ret_MyStruct();
  MyStruct v14 = ret_MyStruct();
  float v15[10] = ret_MyArray();
}

struct tint_symbol {
  float4 value : SV_Target0;
};

tint_symbol main() {
  const tint_symbol tint_symbol_3 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_3;
}

tint_W6AplI:18:24: error: brackets are not allowed here; to declare an array, place the brackets after the name
float[10] ret_MyArray() {
     ~~~~              ^
                       [10]

