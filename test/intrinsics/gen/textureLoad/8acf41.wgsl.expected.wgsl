[[group(1), binding(0)]] var arg_0 : external_texture;

fn textureLoad_8acf41() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_8acf41();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_8acf41();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_8acf41();
}