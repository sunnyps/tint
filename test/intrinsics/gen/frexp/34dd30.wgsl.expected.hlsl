SKIP: FAILED


fn frexp_34dd30() {
  var arg_1 : u32;
  var res : f32 = frexp(1.0, &(arg_1));
}

[[stage(vertex)]]
fn vertex_main() {
  frexp_34dd30();
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_34dd30();
}

[[stage(compute)]]
fn compute_main() {
  frexp_34dd30();
}

Failed to generate: error: Unknown builtin method: frexp