groupshared uint arg_1;

void frexp_8b3191() {
  float tint_tmp;
  float tint_tmp_1 = frexp(1.0f, tint_tmp);
  arg_1 = uint(tint_tmp);
  float res = tint_tmp_1;
}

[numthreads(1, 1, 1)]
void compute_main() {
  frexp_8b3191();
  return;
}