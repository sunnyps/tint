[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_2d_array<rgba8sint>;

fn textureLoad_582015() {
  var res : vec4<i32> = textureLoad(arg_0, vec2<i32>(), 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_582015();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_582015();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_582015();
}