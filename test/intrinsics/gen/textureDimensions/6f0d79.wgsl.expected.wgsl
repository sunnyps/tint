[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<rgba8snorm>;

fn textureDimensions_6f0d79() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_6f0d79();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_6f0d79();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_6f0d79();
}