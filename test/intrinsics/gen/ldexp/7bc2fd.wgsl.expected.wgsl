fn ldexp_7bc2fd() {
  var res : vec2<f32> = ldexp(vec2<f32>(), vec2<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  ldexp_7bc2fd();
}

[[stage(fragment)]]
fn fragment_main() {
  ldexp_7bc2fd();
}

[[stage(compute)]]
fn compute_main() {
  ldexp_7bc2fd();
}