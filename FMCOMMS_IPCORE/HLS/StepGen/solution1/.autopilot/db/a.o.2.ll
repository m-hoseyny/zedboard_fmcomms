; ModuleID = 'C:/Users/ArzhangJunior/Desktop/HLS/StepGen/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@stepGen.str = internal unnamed_addr constant [8 x i8] c"stepGen\00" ; [#uses=1 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=7 type=[1 x i8]*]
@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]

; [#uses=0]
define void @stepGen([256 x i32]* %out_vec) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %out_vec) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @stepGen.str) nounwind
  call void @llvm.dbg.value(metadata !{[256 x i32]* %out_vec}, i64 0, metadata !19), !dbg !23 ; [debug line = 4:28] [debug variable = out_vec]
  call void (...)* @_ssdm_op_SpecInterface([256 x i32]* %out_vec, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !24 ; [debug line = 7:1]
  br label %1, !dbg !26                           ; [debug line = 11:18]

; <label>:1                                       ; preds = %6, %0
  %idx = phi i9 [ 0, %0 ], [ %idx.1, %6 ]         ; [#uses=5 type=i9]
  %idx.cast2 = trunc i9 %idx to i2, !dbg !26      ; [#uses=1 type=i2] [debug line = 11:18]
  %exitcond = icmp eq i9 %idx, -256, !dbg !26     ; [#uses=1 type=i1] [debug line = 11:18]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %3, !dbg !26   ; [debug line = 11:18]

; <label>:3                                       ; preds = %1
  %switch = icmp sgt i2 %idx.cast2, -1, !dbg !28  ; [#uses=1 type=i1] [debug line = 13:3]
  br i1 %switch, label %4, label %5, !dbg !28     ; [debug line = 13:3]

; <label>:4                                       ; preds = %3
  %tmp.4 = zext i9 %idx to i64, !dbg !30          ; [#uses=1 type=i64] [debug line = 15:4]
  %out_vec.addr = getelementptr [256 x i32]* %out_vec, i64 0, i64 %tmp.4, !dbg !30 ; [#uses=1 type=i32*] [debug line = 15:4]
  store i32 40960, i32* %out_vec.addr, align 4, !dbg !30 ; [debug line = 15:4]
  br label %6, !dbg !32                           ; [debug line = 16:3]

; <label>:5                                       ; preds = %3
  %tmp.5 = zext i9 %idx to i64, !dbg !33          ; [#uses=1 type=i64] [debug line = 19:4]
  %out_vec.addr.1 = getelementptr [256 x i32]* %out_vec, i64 0, i64 %tmp.5, !dbg !33 ; [#uses=1 type=i32*] [debug line = 19:4]
  store i32 24576, i32* %out_vec.addr.1, align 4, !dbg !33 ; [debug line = 19:4]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %idx.1 = add i9 %idx, 1, !dbg !35               ; [#uses=1 type=i9] [debug line = 11:31]
  call void @llvm.dbg.value(metadata !{i9 %idx.1}, i64 0, metadata !36), !dbg !35 ; [debug line = 11:31] [debug variable = idx]
  br label %1, !dbg !35                           ; [debug line = 11:31]

; <label>:7                                       ; preds = %1
  ret void, !dbg !38                              ; [debug line = 23:1]
}

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/ArzhangJunior/Desktop/HLS/StepGen/solution1/.autopilot/db/stepGen.pragma.2.cpp", metadata !"c:/Users/ArzhangJunior/Desktop/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"stepGen", metadata !"stepGen", metadata !"_Z7stepGenPj", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"StepGen/stepGen.cpp", metadata !"c:/Users/ArzhangJunior/Desktop/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"out_vec", metadata !17, metadata !"unsigned int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 255, i32 1}
!19 = metadata !{i32 786689, metadata !5, metadata !"out_vec", null, i32 4, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !10, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!23 = metadata !{i32 4, i32 28, metadata !5, null}
!24 = metadata !{i32 7, i32 1, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 11, i32 18, metadata !27, null}
!27 = metadata !{i32 786443, metadata !25, i32 11, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 13, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 12, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 15, i32 4, metadata !31, null}
!31 = metadata !{i32 786443, metadata !29, i32 14, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 16, i32 3, metadata !31, null}
!33 = metadata !{i32 19, i32 4, metadata !34, null}
!34 = metadata !{i32 786443, metadata !29, i32 18, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 11, i32 31, metadata !27, null}
!36 = metadata !{i32 786688, metadata !27, metadata !"idx", metadata !6, i32 11, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 23, i32 1, metadata !25, null}
