SKIP: FAILED


fn frexp_99b922() {
  var arg_1 : i32;
  var res : f32 = frexp(1.0, &(arg_1));
}

[[stage(vertex)]]
fn vertex_main() {
  frexp_99b922();
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_99b922();
}

[[stage(compute)]]
fn compute_main() {
  frexp_99b922();
}

Failed to generate: error: Unknown builtin method: frexp