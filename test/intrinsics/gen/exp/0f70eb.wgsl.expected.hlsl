void exp_0f70eb() {
  float4 res = exp(float4(0.0f, 0.0f, 0.0f, 0.0f));
}

struct tint_symbol {
  float4 value : SV_Position;
};

tint_symbol vertex_main() {
  exp_0f70eb();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  exp_0f70eb();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  exp_0f70eb();
  return;
}
