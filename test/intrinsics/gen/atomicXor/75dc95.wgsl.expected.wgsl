var<workgroup> arg_0 : atomic<i32>;

fn atomicXor_75dc95() {
  var res : i32 = atomicXor(&(arg_0), 1);
}

[[stage(compute)]]
fn compute_main() {
  atomicXor_75dc95();
}