cbuffer cbuffer_x_6 : register(b0, space0) {
  uint4 x_6[1];
};
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  int a = 0;
  const int x_25 = asint(x_6[0].x);
  a = x_25;
  if ((a == 0)) {
    a = (a + 1);
  } else {
    a = (a + 1);
  }
  if ((a == 1)) {
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
  const tint_symbol tint_symbol_3 = {tint_symbol_1.x_GLF_color_1};
  return tint_symbol_3;
}