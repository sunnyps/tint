[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<rgba32uint>;

fn textureStore_26bf70() {
  textureStore(arg_0, vec2<i32>(), vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_26bf70();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_26bf70();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_26bf70();
}