[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_1d<r32uint>;

fn textureLoad_1561a7() {
  var res : vec4<u32> = textureLoad(arg_0, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_1561a7();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_1561a7();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_1561a7();
}