Texture2D<int4> arg_0 : register(t0, space1);

void textureDimensions_d40b9e() {
  int2 tint_tmp;
  arg_0.GetDimensions(tint_tmp.x, tint_tmp.y);
  int2 res = tint_tmp;
}

void vertex_main() {
  textureDimensions_d40b9e();
  return;
}

void fragment_main() {
  textureDimensions_d40b9e();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_d40b9e();
  return;
}
