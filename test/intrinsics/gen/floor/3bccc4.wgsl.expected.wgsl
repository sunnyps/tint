fn floor_3bccc4() {
  var res : vec4<f32> = floor(vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  floor_3bccc4();
}

[[stage(fragment)]]
fn fragment_main() {
  floor_3bccc4();
}

[[stage(compute)]]
fn compute_main() {
  floor_3bccc4();
}