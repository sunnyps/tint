[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_1d<rgba16uint>;

fn textureDimensions_318ecc() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_318ecc();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_318ecc();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_318ecc();
}