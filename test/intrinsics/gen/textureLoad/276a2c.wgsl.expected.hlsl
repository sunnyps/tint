Texture1D<uint4> arg_0 : register(t0, space1);

void textureLoad_276a2c() {
  uint4 res = arg_0.Load(int2(1, 0));
}

void vertex_main() {
  textureLoad_276a2c();
  return;
}

void fragment_main() {
  textureLoad_276a2c();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureLoad_276a2c();
  return;
}
