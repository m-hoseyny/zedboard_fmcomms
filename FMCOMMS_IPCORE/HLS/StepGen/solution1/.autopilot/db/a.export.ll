; ModuleID = 'C:/Users/ArzhangJunior/Desktop/HLS/StepGen/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@stepGen_str = internal unnamed_addr constant [8 x i8] c"stepGen\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @stepGen([256 x i32]* %out_vec) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %out_vec) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @stepGen_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i32]* %out_vec, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i32]* %out_vec, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %idx = phi i9 [ 0, %0 ], [ %idx_1, %2 ]
  %exitcond = icmp eq i9 %idx, -256
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  %idx_1 = add i9 1, %idx
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %idx, i32 1)
  %tmp_4 = zext i9 %idx to i64
  %out_vec_addr = getelementptr [256 x i32]* %out_vec, i64 0, i64 %tmp_4
  %p_cast = select i1 %tmp, i32 24576, i32 40960
  store i32 %p_cast, i32* %out_vec_addr, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i2 @_ssdm_op_PartSelect.i2.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_3 = shl i9 1, %empty
  %empty_4 = and i9 %0, %empty_3
  %empty_5 = icmp ne i9 %empty_4, 0
  ret i1 %empty_5
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_6 = shl i2 1, %empty
  %empty_7 = and i2 %0, %empty_6
  %empty_8 = icmp ne i2 %empty_7, 0
  ret i1 %empty_8
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"out_vec", metadata !4, metadata !"unsigned int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 255, i32 1}
