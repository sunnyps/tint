[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<rg32sint>;

fn textureStore_f9be83() {
  textureStore(arg_0, vec2<i32>(), 1, vec4<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_f9be83();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_f9be83();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_f9be83();
}