[[group(1), binding(0)]] var arg_0 : texture_2d<i32>;

fn textureDimensions_b0e16d() {
  var res : vec2<i32> = textureDimensions(arg_0, 1);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_b0e16d();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_b0e16d();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_b0e16d();
}