[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<rgba8snorm>;

fn textureDimensions_b91240() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_b91240();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_b91240();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_b91240();
}