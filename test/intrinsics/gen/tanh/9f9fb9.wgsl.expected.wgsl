fn tanh_9f9fb9() {
  var res : vec3<f32> = tanh(vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  tanh_9f9fb9();
}

[[stage(fragment)]]
fn fragment_main() {
  tanh_9f9fb9();
}

[[stage(compute)]]
fn compute_main() {
  tanh_9f9fb9();
}