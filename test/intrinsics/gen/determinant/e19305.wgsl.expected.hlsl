void determinant_e19305() {
  float res = determinant(float2x2(0.0f, 0.0f, 0.0f, 0.0f));
}

void vertex_main() {
  determinant_e19305();
  return;
}

void fragment_main() {
  determinant_e19305();
  return;
}

[numthreads(1, 1, 1)]
void compute_main() {
  determinant_e19305();
  return;
}
