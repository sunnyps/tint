[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rg32float>;

fn textureLoad_20fa2f() {
  var res : vec4<f32> = textureLoad(arg_0, vec2<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_20fa2f();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_20fa2f();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_20fa2f();
}