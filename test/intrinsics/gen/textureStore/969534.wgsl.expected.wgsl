[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba32sint>;

fn textureStore_969534() {
  textureStore(arg_0, 1, vec4<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_969534();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_969534();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_969534();
}