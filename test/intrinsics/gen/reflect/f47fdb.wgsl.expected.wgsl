fn reflect_f47fdb() {
  var res : vec3<f32> = reflect(vec3<f32>(), vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  reflect_f47fdb();
}

[[stage(fragment)]]
fn fragment_main() {
  reflect_f47fdb();
}

[[stage(compute)]]
fn compute_main() {
  reflect_f47fdb();
}