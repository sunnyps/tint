RWTexture2DArray<float4> arg_0 : register(u0, space1);

void textureNumLayers_7f1937() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int res = tint_tmp.z;
}

struct tint_symbol {
  float4 value : SV_Position;
};

tint_symbol vertex_main() {
  textureNumLayers_7f1937();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  textureNumLayers_7f1937();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureNumLayers_7f1937();
  return;
}
