[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d<rgba32float>;

fn textureLoad_d5c48d() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_d5c48d();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_d5c48d();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_d5c48d();
}