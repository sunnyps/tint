[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<r32float>;

fn textureDimensions_e9e96c() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_e9e96c();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_e9e96c();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_e9e96c();
}