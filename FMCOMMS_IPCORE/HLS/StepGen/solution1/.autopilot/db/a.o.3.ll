; ModuleID = 'C:/Users/ArzhangJunior/Desktop/HLS/StepGen/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@stepGen_str = internal unnamed_addr constant [8 x i8] c"stepGen\00" ; [#uses=1 type=[8 x i8]*]
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00" ; [#uses=1 type=[7 x i8]*]
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=5 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]

; [#uses=0]
define void @stepGen([256 x i32]* %out_vec) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %out_vec) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @stepGen_str) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i32]* %out_vec}, i64 0, metadata !6), !dbg !18 ; [debug line = 4:28] [debug variable = out_vec]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([256 x i32]* %out_vec, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([256 x i32]* %out_vec, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !19 ; [debug line = 7:1]
  br label %1, !dbg !21                           ; [debug line = 11:18]

; <label>:1                                       ; preds = %2, %0
  %idx = phi i9 [ 0, %0 ], [ %idx_1, %2 ]         ; [#uses=4 type=i9]
  %exitcond = icmp eq i9 %idx, -256, !dbg !21     ; [#uses=1 type=i1] [debug line = 11:18]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  %idx_1 = add i9 1, %idx, !dbg !23               ; [#uses=1 type=i9] [debug line = 11:31]
  br i1 %exitcond, label %3, label %2, !dbg !21   ; [debug line = 11:18]

; <label>:2                                       ; preds = %1
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %idx, i32 1), !dbg !24 ; [#uses=1 type=i1] [debug line = 13:3]
  %tmp_4 = zext i9 %idx to i64, !dbg !26          ; [#uses=1 type=i64] [debug line = 15:4]
  %out_vec_addr = getelementptr [256 x i32]* %out_vec, i64 0, i64 %tmp_4, !dbg !26 ; [#uses=1 type=i32*] [debug line = 15:4]
  %p_cast = select i1 %tmp, i32 24576, i32 40960  ; [#uses=1 type=i32]
  store i32 %p_cast, i32* %out_vec_addr, align 4, !dbg !26 ; [debug line = 15:4]
  call void @llvm.dbg.value(metadata !{i9 %idx_1}, i64 0, metadata !28), !dbg !23 ; [debug line = 11:31] [debug variable = idx]
  br label %1, !dbg !23                           ; [debug line = 11:31]

; <label>:3                                       ; preds = %1
  ret void, !dbg !30                              ; [debug line = 23:1]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i9.i32.i32(i9, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_3 = shl i9 1, %empty                     ; [#uses=1 type=i9]
  %empty_4 = and i9 %0, %empty_3                  ; [#uses=1 type=i9]
  %empty_5 = icmp ne i9 %empty_4, 0               ; [#uses=1 type=i1]
  ret i1 %empty_5
}

; [#uses=0]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_6 = shl i2 1, %empty                     ; [#uses=1 type=i2]
  %empty_7 = and i2 %0, %empty_6                  ; [#uses=1 type=i2]
  %empty_8 = icmp ne i2 %empty_7, 0               ; [#uses=1 type=i1]
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
!6 = metadata !{i32 786689, metadata !7, metadata !"out_vec", null, i32 4, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!7 = metadata !{i32 786478, i32 0, metadata !8, metadata !"stepGen", metadata !"stepGen", metadata !"_Z7stepGenPj", metadata !8, i32 4, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 5} ; [ DW_TAG_subprogram ]
!8 = metadata !{i32 786473, metadata !"StepGen/stepGen.cpp", metadata !"c:/Users/ArzhangJunior/Desktop/HLS", null} ; [ DW_TAG_file_type ]
!9 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{null, metadata !11}
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !12, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!18 = metadata !{i32 4, i32 28, metadata !7, null}
!19 = metadata !{i32 7, i32 1, metadata !20, null}
!20 = metadata !{i32 786443, metadata !7, i32 5, i32 1, metadata !8, i32 0} ; [ DW_TAG_lexical_block ]
!21 = metadata !{i32 11, i32 18, metadata !22, null}
!22 = metadata !{i32 786443, metadata !20, i32 11, i32 2, metadata !8, i32 1} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 11, i32 31, metadata !22, null}
!24 = metadata !{i32 13, i32 3, metadata !25, null}
!25 = metadata !{i32 786443, metadata !22, i32 12, i32 2, metadata !8, i32 2} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 15, i32 4, metadata !27, null}
!27 = metadata !{i32 786443, metadata !25, i32 14, i32 3, metadata !8, i32 3} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786688, metadata !22, metadata !"idx", metadata !8, i32 11, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 23, i32 1, metadata !20, null}
