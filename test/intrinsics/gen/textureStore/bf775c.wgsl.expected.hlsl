RWTexture1D<int4> arg_0 : register(u0, space1);

void textureStore_bf775c() {
  arg_0[1] = int4(0, 0, 0, 0);
}

void vertex_main() {
  textureStore_bf775c();
  return;
}

void fragment_main() {
  textureStore_bf775c();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_bf775c();
  return;
}
