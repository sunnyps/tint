RWTexture2D<int4> arg_0 : register(u0, space1);

void textureStore_31745b() {
  arg_0[int2(0, 0)] = int4(0, 0, 0, 0);
}

void vertex_main() {
  textureStore_31745b();
  return;
}

void fragment_main() {
  textureStore_31745b();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureStore_31745b();
  return;
}
