fn atan2_96057c() {
  var res : f32 = atan2(1.0, 1.0);
}

[[stage(vertex)]]
fn vertex_main() {
  atan2_96057c();
}

[[stage(fragment)]]
fn fragment_main() {
  atan2_96057c();
}

[[stage(compute)]]
fn compute_main() {
  atan2_96057c();
}