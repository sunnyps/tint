[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_3d<rgba32sint>;

fn textureDimensions_8799ee() {
  var res : vec3<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_8799ee();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_8799ee();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_8799ee();
}