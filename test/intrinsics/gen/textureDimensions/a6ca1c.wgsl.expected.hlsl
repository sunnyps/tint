TextureCube arg_0 : register(t0, space1);

void textureDimensions_a6ca1c() {
  int3 tint_tmp;
  arg_0.GetDimensions(1, tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int3 res = tint_tmp.xyy;
}

void vertex_main() {
  textureDimensions_a6ca1c();
  return;
}

void fragment_main() {
  textureDimensions_a6ca1c();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_a6ca1c();
  return;
}
