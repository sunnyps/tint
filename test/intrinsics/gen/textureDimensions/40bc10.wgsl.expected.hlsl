Texture1D<uint4> arg_0 : register(t0, space1);

void textureDimensions_40bc10() {
  int tint_tmp;
  arg_0.GetDimensions(tint_tmp);
  int res = tint_tmp;
}

void vertex_main() {
  textureDimensions_40bc10();
  return;
}

void fragment_main() {
  textureDimensions_40bc10();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_40bc10();
  return;
}
