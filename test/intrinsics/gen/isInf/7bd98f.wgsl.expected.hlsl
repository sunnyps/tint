void isInf_7bd98f() {
  bool res = isinf(1.0f);
}

struct tint_symbol {
  float4 value : SV_Position;
};

tint_symbol vertex_main() {
  isInf_7bd98f();
  const tint_symbol tint_symbol_1 = {float4(0.0f, 0.0f, 0.0f, 0.0f)};
  return tint_symbol_1;
}

void fragment_main() {
  isInf_7bd98f();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  isInf_7bd98f();
  return;
}
