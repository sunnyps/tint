[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_3d<rgba8sint>;

fn textureDimensions_214dd4() {
  var res : vec3<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_214dd4();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_214dd4();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_214dd4();
}