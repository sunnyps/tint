RWTexture2DArray<uint4> arg_0 : register(u0, space1);

void textureDimensions_398e30() {
  int3 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y, tint_tmp.z);
  int2 res = tint_tmp.xy;
}

void vertex_main() {
  textureDimensions_398e30();
  return;
}

void fragment_main() {
  textureDimensions_398e30();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_398e30();
  return;
}
