[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_1d<rgba16float>;

fn textureLoad_c02b74() {
  var res : vec4<f32> = textureLoad(arg_0, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_c02b74();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_c02b74();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_c02b74();
}