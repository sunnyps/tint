SKIP: FAILED


fn frexp_2507b2() {
  var arg_1 : vec4<u32>;
  var res : vec4<f32> = frexp(vec4<f32>(), &(arg_1));
}

[[stage(vertex)]]
fn vertex_main() {
  frexp_2507b2();
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_2507b2();
}

[[stage(compute)]]
fn compute_main() {
  frexp_2507b2();
}

Failed to generate: error: Unknown builtin method: frexp