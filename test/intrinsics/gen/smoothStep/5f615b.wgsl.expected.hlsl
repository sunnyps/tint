void smoothStep_5f615b() {
  float4 res = smoothstep(float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f));
}

struct tint_symbol {
  float4 value : SV_Position;
};

tint_symbol vertex_main() {
  smoothStep_5f615b();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  smoothStep_5f615b();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  smoothStep_5f615b();
  return;
}
