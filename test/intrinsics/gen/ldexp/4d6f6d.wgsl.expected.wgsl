fn ldexp_4d6f6d() {
  var res : vec4<f32> = ldexp(vec4<f32>(), vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  ldexp_4d6f6d();
}

[[stage(fragment)]]
fn fragment_main() {
  ldexp_4d6f6d();
}

[[stage(compute)]]
fn compute_main() {
  ldexp_4d6f6d();
}