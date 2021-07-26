static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  float2x2 m = float2x2(0.0f, 0.0f, 0.0f, 0.0f);
  m = float2x2(float2(1.0f, 2.0f), float2(3.0f, 4.0f));
  const float2x2 x_30 = mul(transpose(m), transpose(m));
  const float2x2 x_34 = transpose(mul(m, m));
  if ((all((x_30[0u] == x_34[0u])) & all((x_30[1u] == x_34[1u])))) {
    x_GLF_color = float4(1.0f, 0.0f, 0.0f, 1.0f);
  } else {
    x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);
  }
  return;
}

struct main_out {
  float4 x_GLF_color_1;
};
struct tint_symbol {
  float4 x_GLF_color_1 : SV_Target0;
};

tint_symbol main() {
  main_1();
  const main_out tint_symbol_1 = {x_GLF_color};
  const tint_symbol tint_symbol_2 = {tint_symbol_1.x_GLF_color_1};
  return tint_symbol_2;
}
