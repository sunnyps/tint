[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_1d<rgba16sint>;

fn textureLoad_6678b6() {
  var res : vec4<i32> = textureLoad(arg_0, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_6678b6();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_6678b6();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_6678b6();
}