[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_1d<rgba8unorm>;

fn textureDimensions_cc5478() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_cc5478();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_cc5478();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_cc5478();
}