[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba8sint>;

fn textureDimensions_9da9e2() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_9da9e2();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_9da9e2();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_9da9e2();
}