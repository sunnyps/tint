[[group(1), binding(0)]] var arg_0 : [[access(write)]] texture_storage_2d_array<r32sint>;

fn textureDimensions_012b82() {
  var res : vec2<i32> = textureDimensions(arg_0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureDimensions_012b82();
}

[[stage(fragment)]]
fn fragment_main() {
  textureDimensions_012b82();
}

[[stage(compute)]]
fn compute_main() {
  textureDimensions_012b82();
}