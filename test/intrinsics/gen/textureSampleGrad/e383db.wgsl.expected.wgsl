[[group(1), binding(0)]] var arg_0 : texture_cube_array<f32>;

[[group(1), binding(1)]] var arg_1 : sampler;

fn textureSampleGrad_e383db() {
  var res : vec4<f32> = textureSampleGrad(arg_0, arg_1, vec3<f32>(), 1, vec3<f32>(), vec3<f32>());
}

[[stage(vertex)]]
fn vertex_main() {
  textureSampleGrad_e383db();
}

[[stage(fragment)]]
fn fragment_main() {
  textureSampleGrad_e383db();
}

[[stage(compute)]]
fn compute_main() {
  textureSampleGrad_e383db();
}