fn clamp_b07c65() {
  var res : i32 = clamp(1, 1, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  clamp_b07c65();
}

[[stage(fragment)]]
fn fragment_main() {
  clamp_b07c65();
}

[[stage(compute)]]
fn compute_main() {
  clamp_b07c65();
}