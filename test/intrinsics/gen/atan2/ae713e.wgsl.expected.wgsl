fn atan2_ae713e() {
  var res : vec4<f32> = atan2(vec4<f32>(), vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  atan2_ae713e();
}

[[stage(fragment)]]
fn fragment_main() {
  atan2_ae713e();
}

[[stage(compute)]]
fn compute_main() {
  atan2_ae713e();
}