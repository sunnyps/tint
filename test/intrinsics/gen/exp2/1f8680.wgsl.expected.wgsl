fn exp2_1f8680() {
  var res : vec3<f32> = exp2(vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  exp2_1f8680();
}

[[stage(fragment)]]
fn fragment_main() {
  exp2_1f8680();
}

[[stage(compute)]]
fn compute_main() {
  exp2_1f8680();
}