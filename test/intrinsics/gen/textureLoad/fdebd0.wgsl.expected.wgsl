[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba8uint>;

fn textureLoad_fdebd0() {
  var res : vec4<u32> = textureLoad(arg_0, vec2<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_fdebd0();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_fdebd0();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_fdebd0();
}