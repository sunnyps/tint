[[group(1), binding(0)]] var arg_0 : texture_cube_array<f32>;

fn textureNumLayers_5d59cd() {
  var res : i32 = textureNumLayers(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureNumLayers_5d59cd();
}

[[stage(fragment)]]
fn fragment_main() {
  textureNumLayers_5d59cd();
}

[[stage(compute)]]
fn compute_main() {
  textureNumLayers_5d59cd();
}