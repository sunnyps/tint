[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<rgba16sint>;

fn textureStore_3a52ac() {
  textureStore(arg_0, vec2<i32>(), 1, vec4<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_3a52ac();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_3a52ac();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_3a52ac();
}