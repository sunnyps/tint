[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d<r32uint>;

fn textureDimensions_9eb8d8() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_9eb8d8();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_9eb8d8();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_9eb8d8();
}