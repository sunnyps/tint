void set_float3(inout float3 vec, int idx, float val) {
  vec = (idx.xxx == int3(0, 1, 2)) ? val.xxx : vec;
}

void set_float4(inout float4 vec, int idx, float val) {
  vec = (idx.xxxx == int4(0, 1, 2, 3)) ? val.xxxx : vec;
}

void set_float2(inout float2 vec, int idx, float val) {
  vec = (idx.xx == int2(0, 1)) ? val.xx : vec;
}

static int x_GLF_global_loop_count = 0;
static float4 x_GLF_color = float4(0.0f, 0.0f, 0.0f, 0.0f);

void main_1() {
  float2x3 m23 = float2x3(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float2x4 m24 = float2x4(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float3x2 m32 = float3x2(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float3x3 m33 = float3x3(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float3x4 m34 = float3x4(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float4x2 m42 = float4x2(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float4x3 m43 = float4x3(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  float4x4 m44 = float4x4(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  int i = 0;
  int i_1 = 0;
  int i_2 = 0;
  int i_3 = 0;
  int i_4 = 0;
  int i_5 = 0;
  int i_6 = 0;
  int i_7 = 0;
  int i_8 = 0;
  int i_9 = 0;
  int i_10 = 0;
  int i_11 = 0;
  int i_12 = 0;
  int i_13 = 0;
  int i_14 = 0;
  int i_15 = 0;
  int i_16 = 0;
  int i_17 = 0;
  int i_18 = 0;
  int i_19 = 0;
  int i_20 = 0;
  int i_21 = 0;
  int i_22 = 0;
  int i_23 = 0;
  int i_24 = 0;
  int i_25 = 0;
  int i_26 = 0;
  int i_27 = 0;
  int i_28 = 0;
  int i_29 = 0;
  int i_30 = 0;
  int i_31 = 0;
  int i_32 = 0;
  int i_33 = 0;
  int i_34 = 0;
  int i_35 = 0;
  int i_36 = 0;
  int i_37 = 0;
  float sum = 0.0f;
  int r = 0;
  x_GLF_global_loop_count = 0;
  m23 = float2x3(float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f));
  m24 = float2x4(float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f));
  m32 = float3x2(float2(0.0f, 0.0f), float2(0.0f, 0.0f), float2(0.0f, 0.0f));
  m33 = float3x3(float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f));
  m34 = float3x4(float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f));
  m42 = float4x2(float2(0.0f, 0.0f), float2(0.0f, 0.0f), float2(0.0f, 0.0f), float2(0.0f, 0.0f));
  m43 = float4x3(float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f), float3(0.0f, 0.0f, 0.0f));
  m44 = float4x4(float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 0.0f));
  i = 0;
  {
    for(; (i < 1); i = (i + 1)) {
      i_1 = 0;
      {
        for(; (i_1 < 1); i_1 = (i_1 + 1)) {
          i_2 = 0;
          {
            for(; (i_2 < 1); i_2 = (i_2 + 1)) {
              i_3 = 0;
              {
                for(; (i_3 < 1); i_3 = (i_3 + 1)) {
                  i_4 = 0;
                  {
                    for(; (i_4 < 1); i_4 = (i_4 + 1)) {
                      i_5 = 0;
                      {
                        for(; (i_5 < 1); i_5 = (i_5 + 1)) {
                          i_6 = 0;
                          {
                            for(; (i_6 < 1); i_6 = (i_6 + 1)) {
                              i_7 = 0;
                              {
                                for(; (i_7 < 1); i_7 = (i_7 + 1)) {
                                  i_8 = 0;
                                  {
                                    for(; (i_8 < 1); i_8 = (i_8 + 1)) {
                                      i_9 = 0;
                                      {
                                        for(; (i_9 < 1); i_9 = (i_9 + 1)) {
                                          i_10 = 0;
                                          {
                                            for(; (i_10 < 1); i_10 = (i_10 + 1)) {
                                              i_11 = 0;
                                              {
                                                for(; (i_11 < 1); i_11 = (i_11 + 1)) {
                                                  i_12 = 0;
                                                  {
                                                    for(; (i_12 < 1); i_12 = (i_12 + 1)) {
                                                      i_13 = 0;
                                                      {
                                                        for(; (i_13 < 1); i_13 = (i_13 + 1)) {
                                                          i_14 = 0;
                                                          {
                                                            for(; (i_14 < 1); i_14 = (i_14 + 1)) {
                                                              i_15 = 0;
                                                              {
                                                                for(; (i_15 < 1); i_15 = (i_15 + 1)) {
                                                                  i_16 = 0;
                                                                  {
                                                                    for(; (i_16 < 1); i_16 = (i_16 + 1)) {
                                                                      i_17 = 0;
                                                                      {
                                                                        for(; (i_17 < 1); i_17 = (i_17 + 1)) {
                                                                          i_18 = 0;
                                                                          {
                                                                            for(; (i_18 < 1); i_18 = (i_18 + 1)) {
                                                                              i_19 = 0;
                                                                              {
                                                                                for(; (i_19 < 1); i_19 = (i_19 + 1)) {
                                                                                  i_20 = 0;
                                                                                  {
                                                                                    for(; (i_20 < 1); i_20 = (i_20 + 1)) {
                                                                                      i_21 = 0;
                                                                                      {
                                                                                        for(; (i_21 < 1); i_21 = (i_21 + 1)) {
                                                                                          i_22 = 0;
                                                                                          {
                                                                                            for(; (i_22 < 1); i_22 = (i_22 + 1)) {
                                                                                              i_23 = 0;
                                                                                              {
                                                                                                for(; (i_23 < 1); i_23 = (i_23 + 1)) {
                                                                                                  i_24 = 0;
                                                                                                  {
                                                                                                    for(; (i_24 < 1); i_24 = (i_24 + 1)) {
                                                                                                      i_25 = 0;
                                                                                                      {
                                                                                                        for(; (i_25 < 1); i_25 = (i_25 + 1)) {
                                                                                                          i_26 = 0;
                                                                                                          {
                                                                                                            for(; (i_26 < 1); i_26 = (i_26 + 1)) {
                                                                                                              i_27 = 0;
                                                                                                              {
                                                                                                                for(; (i_27 < 1); i_27 = (i_27 + 1)) {
                                                                                                                  i_28 = 0;
                                                                                                                  {
                                                                                                                    for(; (i_28 < 1); i_28 = (i_28 + 1)) {
                                                                                                                      i_29 = 0;
                                                                                                                      {
                                                                                                                        for(; (i_29 < 1); i_29 = (i_29 + 1)) {
                                                                                                                          i_30 = 0;
                                                                                                                          {
                                                                                                                            for(; (i_30 < 1); i_30 = (i_30 + 1)) {
                                                                                                                              i_31 = 0;
                                                                                                                              {
                                                                                                                                for(; (i_31 < 1); i_31 = (i_31 + 1)) {
                                                                                                                                  i_32 = 0;
                                                                                                                                  {
                                                                                                                                    for(; (i_32 < 1); i_32 = (i_32 + 1)) {
                                                                                                                                      i_33 = 0;
                                                                                                                                      {
                                                                                                                                        for(; (i_33 < 1); i_33 = (i_33 + 1)) {
                                                                                                                                          i_34 = 0;
                                                                                                                                          {
                                                                                                                                            for(; (i_34 < 1); i_34 = (i_34 + 1)) {
                                                                                                                                              i_35 = 0;
                                                                                                                                              {
                                                                                                                                                for(; (i_35 < 1); i_35 = (i_35 + 1)) {
                                                                                                                                                  i_36 = 0;
                                                                                                                                                  {
                                                                                                                                                    for(; (i_36 < 1); i_36 = (i_36 + 1)) {
                                                                                                                                                      i_37 = 0;
                                                                                                                                                      {
                                                                                                                                                        for(; (i_37 < 1); i_37 = (i_37 + 1)) {
                                                                                                                                                          while (true) {
                                                                                                                                                            x_GLF_global_loop_count = (x_GLF_global_loop_count + 1);
                                                                                                                                                            {
                                                                                                                                                              if ((x_GLF_global_loop_count < 98)) {
                                                                                                                                                              } else {
                                                                                                                                                                break;
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                          set_float3(m23[i_37], i_37, 1.0f);
                                                                                                                                                          set_float4(m24[i_37], i_37, 1.0f);
                                                                                                                                                          set_float2(m32[i_37], i_37, 1.0f);
                                                                                                                                                          set_float3(m33[i_37], i_37, 1.0f);
                                                                                                                                                          set_float4(m34[i_37], i_37, 1.0f);
                                                                                                                                                          set_float2(m42[i_37], i_37, 1.0f);
                                                                                                                                                          set_float3(m43[i_37], i_37, 1.0f);
                                                                                                                                                          set_float4(m44[i_37], i_37, 1.0f);
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  sum = 0.0f;
  r = 0;
  {
    for(; (x_GLF_global_loop_count < 100); r = (r + 1)) {
      x_GLF_global_loop_count = (x_GLF_global_loop_count + 1);
      const float x_486 = m23[0][r];
      sum = (sum + x_486);
      const float x_491 = m24[0][r];
      sum = (sum + x_491);
      const float x_496 = m32[0][r];
      sum = (sum + x_496);
      const float x_501 = m33[0][r];
      sum = (sum + x_501);
      const float x_506 = m34[0][r];
      sum = (sum + x_506);
      const float x_511 = m42[0][r];
      sum = (sum + x_511);
      const float x_516 = m43[0][r];
      sum = (sum + x_516);
      const float x_521 = m44[0][r];
      sum = (sum + x_521);
    }
  }
  if ((sum == 8.0f)) {
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