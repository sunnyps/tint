[[group(1), binding(0)]] var arg_0 : texture_1d<f32>;

fn textureDimensions_002b2a() {
  var res : i32 = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_002b2a();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_002b2a();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_002b2a();
}