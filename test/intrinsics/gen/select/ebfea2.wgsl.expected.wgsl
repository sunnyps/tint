fn select_ebfea2() {
  var res : vec3<f32> = select(vec3<f32>(), vec3<f32>(), vec3<bool>());
}

[[stage(vertex)]]
fn vertex_main() {
  select_ebfea2();
}

[[stage(fragment)]]
fn fragment_main() {
  select_ebfea2();
}

[[stage(compute)]]
fn compute_main() {
  select_ebfea2();
}