fn unpack2x16snorm_b4aea6() {
  var res : vec2<f32> = unpack2x16snorm(1u);
}

[[stage(vertex)]]
fn vertex_main() {
  unpack2x16snorm_b4aea6();
}

[[stage(fragment)]]
fn fragment_main() {
  unpack2x16snorm_b4aea6();
}

[[stage(compute)]]
fn compute_main() {
  unpack2x16snorm_b4aea6();
}