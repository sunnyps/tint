[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d<rgba16float>;

fn textureLoad_e893d7() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_e893d7();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_e893d7();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_e893d7();
}