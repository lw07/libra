module M {

  struct S {
    x: u64,
  }

  spec struct S {
    global sum: num;
    invariant update sum = sum - old(x) + x;
    invariant pack sum = sum + x;
    invariant unpack sum = sum - x;
  }
}
