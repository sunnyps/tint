RWTexture3D<float4> arg_0 : register(u0, space1);

void textureStore_c5af1e() {
  arg_0[int3(0, 0, 0)] = float4(0.0f, 0.0f, 0.0f, 0.0f);
}

void vertex_main() {
  textureStore_c5af1e();
  return;
}

void fragment_main() {
  textureStore_c5af1e();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_c5af1e();
  return;
}
