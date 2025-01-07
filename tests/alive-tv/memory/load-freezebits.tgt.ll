@gv = global i8 0

define void @fn(i8 %v) {
entry:
  %v.freeze = freeze i8 %v
  %cmp = icmp eq i8 %v.freeze, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:
  store i8 %v.freeze, ptr @gv
  br label %if.end

if.end:
  ret void
}

define i8 @fn2() {
entry:
  ret i8 255
}
