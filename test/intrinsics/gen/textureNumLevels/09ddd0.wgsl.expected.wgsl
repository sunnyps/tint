[[group(1), binding(0)]] var arg_0 : texture_2d<u32>;

fn textureNumLevels_09ddd0() {
  var res : i32 = textureNumLevels(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLevels_09ddd0();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLevels_09ddd0();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLevels_09ddd0();
}