[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_3d<rgba8uint>;

fn textureStore_f8dead() {
  textureStore(arg_0, vec3<i32>(), vec4<u32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_f8dead();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_f8dead();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_f8dead();
}