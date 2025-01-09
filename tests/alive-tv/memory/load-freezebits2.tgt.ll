define i32 @test78(i1 %flag, ptr %x, ptr %y, ptr %z) {
entry:
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 42, ptr %z, align 4
  %x.val = load i32, ptr %x, align 4, !freeze_bits !{}
  %y.val = load i32, ptr %y, align 4, !freeze_bits !{}
  %v = select i1 %flag, i32 %x.val, i32 %y.val
  ret i32 %v
}
