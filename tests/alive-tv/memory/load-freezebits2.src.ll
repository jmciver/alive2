define i32 @test78(i1 %flag, ptr %x, ptr %y, ptr %z) {
entry:
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 42, ptr %z, align 4
  %p = select i1 %flag, ptr %x, ptr %y
  %v = load i32, ptr %p, align 4
  ret i32 %v
}
