RWTexture2DArray<float4> arg_0 : register(u0, space1);

void textureStore_4fc057() {
  arg_0[int3(0, 0, 1)] = float4(0.0f, 0.0f, 0.0f, 0.0f);
}

void vertex_main() {
  textureStore_4fc057();
  return;
}

void fragment_main() {
  textureStore_4fc057();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_4fc057();
  return;
}
