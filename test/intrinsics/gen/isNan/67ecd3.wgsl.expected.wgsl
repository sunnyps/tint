fn isNan_67ecd3() {
  var res : vec2<bool> = isNan(vec2<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  isNan_67ecd3();
}

[[stage(fragment)]]
fn fragment_main() {
  isNan_67ecd3();
}

[[stage(compute)]]
fn compute_main() {
  isNan_67ecd3();
}