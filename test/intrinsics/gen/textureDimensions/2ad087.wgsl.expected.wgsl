[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<rgba16sint>;

fn textureDimensions_2ad087() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_2ad087();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_2ad087();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_2ad087();
}