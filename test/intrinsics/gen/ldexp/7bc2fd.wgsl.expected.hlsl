void ldexp_7bc2fd() {
  float2 res = ldexp(float2(0.0f, 0.0f), uint2(0u, 0u));
}

void vertex_main() {
  ldexp_7bc2fd();
  return;
}

void fragment_main() {
  ldexp_7bc2fd();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  ldexp_7bc2fd();
  return;
}
