RWTexture2D<uint4> arg_0 : register(u0, space1);

void textureStore_0c3dff() {
  arg_0[int2(0, 0)] = uint4(0u, 0u, 0u, 0u);
}

void vertex_main() {
  textureStore_0c3dff();
  return;
}

void fragment_main() {
  textureStore_0c3dff();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_0c3dff();
  return;
}
