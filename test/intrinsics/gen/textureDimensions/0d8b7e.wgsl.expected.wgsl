[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<r32uint>;

fn textureDimensions_0d8b7e() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_0d8b7e();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_0d8b7e();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_0d8b7e();
}