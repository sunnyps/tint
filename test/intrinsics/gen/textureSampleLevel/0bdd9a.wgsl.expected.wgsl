[[group(1), binding(0)]] var arg_0 : texture_cube_array<f32>;

[[group(1), binding(1)]] var arg_1 : sampler;

fn textureSampleLevel_0bdd9a() {
  var res : vec4<f32> = textureSampleLevel(arg_0, arg_1, vec3<f32>(), 1, 1.0);
}

[[stage(vertex)]]
fn vertex_main() {
  textureSampleLevel_0bdd9a();
}

[[stage(fragment)]]
fn fragment_main() {
  textureSampleLevel_0bdd9a();
}

[[stage(compute)]]
fn compute_main() {
  textureSampleLevel_0bdd9a();
}