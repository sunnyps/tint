Texture1D<float4> arg_0 : register(t0, space1);

void textureDimensions_6c08ab() {
  int tint_tmp;
  arg_0.GetDimensions(tint_tmp);
  int res = tint_tmp;
}

void vertex_main() {
  textureDimensions_6c08ab();
  return;
}

void fragment_main() {
  textureDimensions_6c08ab();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureDimensions_6c08ab();
  return;
}
