[[group(1), binding(0)]] var arg_0 : [[access(read)]] texture_storage_1d<r32float>;

fn textureDimensions_d8f951() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_d8f951();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_d8f951();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_d8f951();
}