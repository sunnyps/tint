SKIP: FAILED


fn frexp_ee3625() {
  var arg_1 : vec2<u32>;
  var res : vec2<f32> = frexp(vec2<f32>(), &(arg_1));
}

struct tint_symbol {
  [[builtin(position)]]
  value : vec4<f32>;
};

[[stage(vertex)]]
fn vertex_main() -> tint_symbol {
  frexp_ee3625();
  let tint_symbol_1 : tint_symbol = tint_symbol(vec4<f32>());
  return tint_symbol_1;
}

[[stage(fragment)]]
fn fragment_main() {
  frexp_ee3625();
}

[[stage(compute)]]
fn compute_main() {
  frexp_ee3625();
}

Failed to generate: error: Unknown builtin method: frexp