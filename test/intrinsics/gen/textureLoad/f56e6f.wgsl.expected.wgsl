[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_3d<rgba16uint>;

fn textureLoad_f56e6f() {
  var res : vec4<u32> = textureLoad(arg_0, vec3<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_f56e6f();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_f56e6f();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_f56e6f();
}