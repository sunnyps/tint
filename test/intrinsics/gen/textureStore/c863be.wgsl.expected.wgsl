[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<rg32float>;

fn textureStore_c863be() {
  textureStore(arg_0, vec2<i32>(), 1, vec4<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureStore_c863be();
}

[[stage(fragment)]]
fn fragment_main() {
  textureStore_c863be();
}

[[stage(compute)]]
fn compute_main() {
  textureStore_c863be();
}