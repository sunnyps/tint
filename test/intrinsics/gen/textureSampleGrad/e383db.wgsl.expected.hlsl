TextureCubeArray<float4> arg_0 : register(t0, space1);
SamplerState arg_1 : register(s1, space1);

void textureSampleGrad_e383db() {
  float4 res = arg_0.SampleGrad(arg_1, float4(0.0f, 0.0f, 0.0f, float(1)), float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f));
}

void vertex_main() {
  textureSampleGrad_e383db();
  return;
}

void fragment_main() {
  textureSampleGrad_e383db();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  textureSampleGrad_e383db();
  return;
}
