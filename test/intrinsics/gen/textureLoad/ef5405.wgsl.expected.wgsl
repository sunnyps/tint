[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_3d<rg32uint>;

fn textureLoad_ef5405() {
  var res : vec4<u32> = textureLoad(arg_0, vec3<i32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureLoad_ef5405();
}

[[stage(fragment)]]
fn fragment_main() {
  textureLoad_ef5405();
}

[[stage(compute)]]
fn compute_main() {
  textureLoad_ef5405();
}