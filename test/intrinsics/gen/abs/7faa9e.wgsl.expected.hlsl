void abs_7faa9e() {
  int2 res = abs(int2(0, 0));
}

struct tint_symbol {
  float4 value : SV_Position;
};

tint_symbol vertex_main() {
  abs_7faa9e();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  abs_7faa9e();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  abs_7faa9e();
  return;
}
