fn cosh_377652() {
  var res : vec3<f32> = cosh(vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  cosh_377652();
}

[[stage(fragment)]]
fn fragment_main() {
  cosh_377652();
}

[[stage(compute)]]
fn compute_main() {
  cosh_377652();
}