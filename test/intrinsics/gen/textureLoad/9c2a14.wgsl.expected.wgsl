[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d<rg32float>;

fn textureLoad_9c2a14() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_9c2a14();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_9c2a14();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_9c2a14();
}