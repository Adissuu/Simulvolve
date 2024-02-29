; ModuleID = 'probe1.df2e7cf08acaed93-cgu.0'
source_filename = "probe1.df2e7cf08acaed93-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::fmt::Arguments<'_>" = type { { ptr, i32 }, { ptr, i32 }, %"core::option::Option<&[core::fmt::rt::Placeholder]>" }
%"core::option::Option<&[core::fmt::rt::Placeholder]>" = type { ptr, [1 x i32] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { %"alloc::raw_vec::RawVec<u8>", i32 }
%"alloc::raw_vec::RawVec<u8>" = type { i32, ptr, %"alloc::alloc::Global" }
%"alloc::alloc::Global" = type {}
%"core::alloc::layout::Layout" = type { i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>" = type { i32, [1 x i32] }
%"core::option::Option<&str>" = type { ptr, [1 x i32] }
%"core::ptr::metadata::PtrComponents<[u8]>" = type { ptr, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i32] }
%"core::ptr::non_null::NonNull<[u8]>" = type { { ptr, i32 } }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>" = type { ptr, [1 x i32] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [1 x i32], i32, [1 x i32] }
%"core::fmt::rt::Argument<'_>" = type { ptr, ptr }

@0 = private unnamed_addr constant <{ [4 x i8], [4 x i8] }> <{ [4 x i8] zeroinitializer, [4 x i8] undef }>, align 4
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_961fd82c18500a61bf8f6d7be21ce6b0 = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [4 x i8] c"\0C\00\00\00" }>, align 4
@alloc_c06a172a08ac35a48b6ad59116e021fc = private unnamed_addr constant <{}> zeroinitializer, align 4
@alloc_7c295f1fbbff0faf90594f4b20e70e22 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/8f359beca4e58bc3ae795a666301a8f47023044c/library/core/src/fmt/mod.rs" }>, align 1
@alloc_3e3cf5d555f3e3176f417367387a22d7 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_7c295f1fbbff0faf90594f4b20e70e22, [12 x i8] c"K\00\00\00M\01\00\00\0D\00\00\00" }>, align 4
@alloc_7af1c86d5e3f9d199f249a69b70cfd8a = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/8f359beca4e58bc3ae795a666301a8f47023044c/library/core/src/alloc/layout.rs" }>, align 1
@alloc_75b9959651dae0c08da7449b0d64128a = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_7af1c86d5e3f9d199f249a69b70cfd8a, [12 x i8] c"P\00\00\00\C1\01\00\00)\00\00\00" }>, align 4
@str.0 = internal unnamed_addr constant [25 x i8] c"attempt to divide by zero"
@__rust_no_alloc_shim_is_unstable = external dso_local global i8
@alloc_68ac15728a1e6ba4743b718936db7fdf = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr @alloc_c06a172a08ac35a48b6ad59116e021fc, [4 x i8] zeroinitializer }>, align 4
@alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3fmt9Arguments6new_v117h2a0a56272387fc98E(ptr sret(%"core::fmt::Arguments<'_>") align 4 %_0, ptr align 4 %pieces.0, i32 %pieces.1, ptr align 4 %args.0, i32 %args.1) unnamed_addr #0 {
start:
  %_9 = alloca %"core::fmt::Arguments<'_>", align 4
  %_3 = icmp ult i32 %pieces.1, %args.1
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_7 = add i32 %args.1, 1
  %_6 = icmp ugt i32 %pieces.1, %_7
  br i1 %_6, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store ptr @alloc_961fd82c18500a61bf8f6d7be21ce6b0, ptr %_9, align 4
  %0 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 1, ptr %0, align 4
  %1 = load ptr, ptr @0, align 4, !align !1, !noundef !2
  %2 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i32 0, i32 2
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9, i32 0, i32 1
  store ptr @alloc_c06a172a08ac35a48b6ad59116e021fc, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hef404fc8f89d76c5E(ptr align 4 %_9, ptr align 4 @alloc_3e3cf5d555f3e3176f417367387a22d7) #11
  unreachable

bb3:                                              ; preds = %bb1
  store ptr %pieces.0, ptr %_0, align 4
  %7 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %pieces.1, ptr %7, align 4
  %8 = load ptr, ptr @0, align 4, !align !1, !noundef !2
  %9 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 2
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 %9, ptr %11, align 4
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_0, i32 0, i32 1
  store ptr %args.0, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 %args.1, ptr %13, align 4
  ret void
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3ops8function6FnOnce9call_once17hc490b861c2083b0bE(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %0, i32 %1) unnamed_addr #0 {
start:
  %_2 = alloca { { ptr, i32 } }, align 4
  store ptr %0, ptr %_2, align 4
  %2 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %1, ptr %2, align 4
  %3 = load ptr, ptr %_2, align 4, !nonnull !2, !align !3, !noundef !2
  %4 = getelementptr inbounds i8, ptr %_2, i32 4
  %5 = load i32, ptr %4, align 4, !noundef !2
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h9adfd61d3cfbc16eE"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %3, i32 %5) #12
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha9f66f9c9f13ecfcE"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc39171f67f226b8dE"(ptr align 4 %_1) #12
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc39171f67f226b8dE"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3e15510ab5030c6cE"(ptr align 4 %_1) #12
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h03a4b8797bbd5aedE"(ptr align 4 %_1) #12
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h03a4b8797bbd5aedE"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f014cf119c31b61E"(ptr align 4 %_1) #12
  ret void
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hd9190c5b68f37686E(i32 %element_size, i32 %align, i32 %n) unnamed_addr #0 {
start:
  %_18 = alloca i32, align 4
  %_13 = alloca i32, align 4
  %_9 = alloca %"core::alloc::layout::Layout", align 4
  %_0 = alloca %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", align 4
  %0 = icmp eq i32 %element_size, 0
  br i1 %0, label %bb5, label %bb1

bb5:                                              ; preds = %bb4, %start
  %array_size = mul nuw i32 %element_size, %n
  store i32 %align, ptr %_18, align 4
  %_19 = load i32, ptr %_18, align 4, !range !4, !noundef !2
  %_20 = icmp uge i32 %_19, 1
  %_21 = icmp ule i32 %_19, -2147483648
  %_22 = and i1 %_20, %_21
  %1 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %array_size, ptr %1, align 4
  store i32 %_19, ptr %_9, align 4
  %2 = load i32, ptr %_9, align 4, !range !4, !noundef !2
  %3 = getelementptr inbounds i8, ptr %_9, i32 4
  %4 = load i32, ptr %3, align 4, !noundef !2
  store i32 %2, ptr %_0, align 4
  %5 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %4, ptr %5, align 4
  br label %bb6

bb1:                                              ; preds = %start
  store i32 %align, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4, !range !4, !noundef !2
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  %_11 = sub i32 %_14, 1
  %_6 = sub i32 2147483647, %_11
  %_7 = icmp eq i32 %element_size, 0
  %6 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %6, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = udiv i32 %_6, %element_size
  %_4 = icmp ugt i32 %n, %_5
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hdad5696100f432bfE(ptr align 1 @str.0, i32 25, ptr align 4 @alloc_75b9959651dae0c08da7449b0d64128a) #11
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb3:                                              ; preds = %bb2
  %7 = load i32, ptr @0, align 4, !range !5, !noundef !2
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store i32 %7, ptr %_0, align 4
  %9 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %8, ptr %9, align 4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %10 = load i32, ptr %_0, align 4, !range !5, !noundef !2
  %11 = getelementptr inbounds i8, ptr %_0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = insertvalue { i32, i32 } poison, i32 %10, 0
  %14 = insertvalue { i32, i32 } %13, i32 %12, 1
  ret { i32, i32 } %14
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h2a33392df6eee184E"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %0, i32 %1, ptr align 4 %default) unnamed_addr #0 {
start:
  %_7 = alloca { { ptr, i32 } }, align 4
  %self = alloca %"core::option::Option<&str>", align 4
  store ptr %0, ptr %self, align 4
  %2 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %1, ptr %2, align 4
  %3 = load ptr, ptr %self, align 4, !noundef !2
  %4 = ptrtoint ptr %3 to i32
  %5 = icmp eq i32 %4, 0
  %_4 = select i1 %5, i32 0, i32 1
  %6 = icmp eq i32 %_4, 0
  br i1 %6, label %bb2, label %bb3

bb2:                                              ; preds = %start
; call alloc::fmt::format::{{closure}}
  call void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hf9169b1205d9109fE"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 4 %default) #12
  br label %bb6

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 4, !nonnull !2, !align !3, !noundef !2
  %7 = getelementptr inbounds i8, ptr %self, i32 4
  %t.1 = load i32, ptr %7, align 4, !noundef !2
  store ptr %t.0, ptr %_7, align 4
  %8 = getelementptr inbounds i8, ptr %_7, i32 4
  store i32 %t.1, ptr %8, align 4
  %9 = load ptr, ptr %_7, align 4, !nonnull !2, !align !3, !noundef !2
  %10 = getelementptr inbounds i8, ptr %_7, i32 4
  %11 = load i32, ptr %10, align 4, !noundef !2
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17hc490b861c2083b0bE(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %9, i32 %11) #12
  br i1 true, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb3, %bb2
  ret void

bb7:                                              ; preds = %bb3
  br label %bb6

bb1:                                              ; No predecessors!
  unreachable
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb122a4f5657b4619E"(ptr sret(%"alloc::vec::Vec<u8>") align 4 %_0, ptr align 1 %s.0, i32 %s.1) unnamed_addr #0 {
start:
  %v = alloca %"alloc::vec::Vec<u8>", align 4
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %0 = call { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h3b9d7be09f4409e3E"(i32 %s.1, i1 zeroext false) #12
  %_11.0 = extractvalue { i32, ptr } %0, 0
  %_11.1 = extractvalue { i32, ptr } %0, 1
  store i32 %_11.0, ptr %v, align 4
  %1 = getelementptr inbounds i8, ptr %v, i32 4
  store ptr %_11.1, ptr %1, align 4
  %2 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %v, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %v, i32 4
  %self = load ptr, ptr %3, align 4, !nonnull !2, !noundef !2
  br i1 true, label %bb2, label %bb3

bb3:                                              ; preds = %bb2, %start
  %4 = mul i32 %s.1, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %self, ptr align 1 %s.0, i32 %4, i1 false)
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %v, i32 0, i32 1
  store i32 %s.1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %v, i32 12, i1 false)
  ret void

bb2:                                              ; preds = %start
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h08a61377f715b9a3E(ptr %s.0, ptr %self, i32 1, i32 1, i32 %s.1) #12
  br label %bb3
}

; alloc::fmt::format
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc3fmt6format17hcabaa1bb48d19b4eE(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 4 %args) unnamed_addr #0 {
start:
  %_4 = alloca ptr, align 4
  %_2 = alloca %"core::option::Option<&str>", align 4
  %_6.0 = load ptr, ptr %args, align 4, !nonnull !2, !align !1, !noundef !2
  %0 = getelementptr inbounds i8, ptr %args, i32 4
  %_6.1 = load i32, ptr %0, align 4, !noundef !2
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args, i32 0, i32 1
  %_7.0 = load ptr, ptr %1, align 4, !nonnull !2, !align !1, !noundef !2
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %_7.1 = load i32, ptr %2, align 4, !noundef !2
  %3 = icmp eq i32 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i32 %_7.1, 0
  br i1 %4, label %bb7, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i32 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb7:                                              ; preds = %bb4
  store ptr @alloc_c06a172a08ac35a48b6ad59116e021fc, ptr %_2, align 4
  %6 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 0, ptr %6, align 4
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @0, align 4, !align !3, !noundef !2
  %8 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %7, ptr %_2, align 4
  %9 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %8, ptr %9, align 4
  br label %bb2

bb2:                                              ; preds = %bb3, %bb8, %bb7
  store ptr %args, ptr %_4, align 4
  %10 = load ptr, ptr %_2, align 4, !align !3, !noundef !2
  %11 = getelementptr inbounds i8, ptr %_2, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %_4, align 4, !nonnull !2, !align !1, !noundef !2
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h2a33392df6eee184E"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %10, i32 %12, ptr align 4 %13) #12
  ret void

bb6:                                              ; preds = %bb5
  %14 = icmp eq i32 %_7.1, 0
  br i1 %14, label %bb8, label %bb3

bb8:                                              ; preds = %bb6
  %s = getelementptr inbounds [0 x { ptr, i32 }], ptr %_6.0, i32 0, i32 0
  %15 = getelementptr inbounds [0 x { ptr, i32 }], ptr %_6.0, i32 0, i32 0
  %_13.0 = load ptr, ptr %15, align 4, !nonnull !2, !align !3, !noundef !2
  %16 = getelementptr inbounds i8, ptr %15, i32 4
  %_13.1 = load i32, ptr %16, align 4, !noundef !2
  store ptr %_13.0, ptr %_2, align 4
  %17 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %_13.1, ptr %17, align 4
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hf9169b1205d9109fE"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 4 %_1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments<'_>", align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_2, ptr align 4 %_1, i32 24, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h744266987eff6a86E(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 4 %_2) #12
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nounwind
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h9adfd61d3cfbc16eE"(ptr sret(%"alloc::string::String") align 4 %_0, ptr align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %bytes = alloca %"alloc::vec::Vec<u8>", align 4
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb122a4f5657b4619E"(ptr sret(%"alloc::vec::Vec<u8>") align 4 %bytes, ptr align 1 %self.0, i32 %self.1) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %bytes, i32 12, i1 false)
  ret void
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nounwind
define internal ptr @_ZN5alloc5alloc5alloc17h0724e8c5b062b9c5E(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %2 = alloca i8, align 1
  %_13 = alloca i32, align 4
  %layout = alloca %"core::alloc::layout::Layout", align 4
  store i32 %0, ptr %layout, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %3, align 4
  br i1 true, label %bb3, label %bb4

bb4:                                              ; preds = %bb3, %start
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1, !noundef !2
  %5 = getelementptr inbounds i8, ptr %layout, i32 4
  %_5 = load i32, ptr %5, align 4, !noundef !2
  %self = load i32, ptr %layout, align 4, !range !4, !noundef !2
  store i32 %self, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4, !range !4, !noundef !2
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  %_0 = call ptr @__rust_alloc(i32 %_5, i32 %_14) #12
  ret ptr %_0

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17h46b8b8512409feb7E(ptr @__rust_no_alloc_shim_is_unstable, i32 1) #12
  br label %bb4
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h11acf1e6044a31b0E(ptr align 1 %self, i32 %0, i32 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_62 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 4
  %_61 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %_49 = alloca ptr, align 4
  %_44 = alloca i32, align 4
  %_35 = alloca ptr, align 4
  %_34 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 4
  %_33 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %data_pointer = alloca ptr, align 4
  %data4 = alloca ptr, align 4
  %ptr = alloca { ptr, i32 }, align 4
  %_29 = alloca ptr, align 4
  %_21 = alloca i32, align 4
  %_17 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 4
  %self3 = alloca ptr, align 4
  %self2 = alloca ptr, align 4
  %_12 = alloca ptr, align 4
  %layout1 = alloca %"core::alloc::layout::Layout", align 4
  %raw_ptr = alloca ptr, align 4
  %data = alloca ptr, align 4
  %_6 = alloca %"core::ptr::non_null::NonNull<[u8]>", align 4
  %_0 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 4
  %layout = alloca %"core::alloc::layout::Layout", align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %size = load i32, ptr %3, align 4, !noundef !2
  %4 = icmp eq i32 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %self5 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  store i32 %self5, ptr %_21, align 4
  %_22 = load i32, ptr %_21, align 4, !range !4, !noundef !2
  %_23 = icmp uge i32 %_22, 1
  %_24 = icmp ule i32 %_22, -2147483648
  %_25 = and i1 %_23, %_24
  %ptr6 = inttoptr i32 %_22 to ptr
  br i1 true, label %bb8, label %bb9

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb9:                                              ; preds = %bb2
  store ptr %ptr6, ptr %_29, align 4
  %5 = load ptr, ptr %_29, align 4, !noundef !2
  store ptr %5, ptr %data, align 4
  store ptr %ptr6, ptr %data4, align 4
  store ptr %ptr6, ptr %data_pointer, align 4
  store ptr %ptr6, ptr %_35, align 4
  %6 = load ptr, ptr %_35, align 4, !noundef !2
  store ptr %6, ptr %_34, align 4
  %7 = getelementptr inbounds i8, ptr %_34, i32 4
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %_34, align 4, !noundef !2
  %9 = getelementptr inbounds i8, ptr %_34, i32 4
  %10 = load i32, ptr %9, align 4, !noundef !2
  store ptr %8, ptr %_33, align 4
  %11 = getelementptr inbounds i8, ptr %_33, i32 4
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %_33, align 4, !noundef !2
  %13 = getelementptr inbounds i8, ptr %_33, i32 4
  %14 = load i32, ptr %13, align 4, !noundef !2
  store ptr %12, ptr %ptr, align 4
  %15 = getelementptr inbounds i8, ptr %ptr, i32 4
  store i32 %14, ptr %15, align 4
  br i1 true, label %bb10, label %bb11

bb8:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr %ptr6) #12
  store ptr %ptr6, ptr %_29, align 4
  %16 = load ptr, ptr %_29, align 4, !noundef !2
  store ptr %16, ptr %data, align 4
  store ptr %ptr6, ptr %data4, align 4
  store ptr %ptr6, ptr %data_pointer, align 4
  store ptr %ptr6, ptr %_35, align 4
  %17 = load ptr, ptr %_35, align 4, !noundef !2
  store ptr %17, ptr %_34, align 4
  %18 = getelementptr inbounds i8, ptr %_34, i32 4
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %_34, align 4, !noundef !2
  %20 = getelementptr inbounds i8, ptr %_34, i32 4
  %21 = load i32, ptr %20, align 4, !noundef !2
  store ptr %19, ptr %_33, align 4
  %22 = getelementptr inbounds i8, ptr %_33, i32 4
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %_33, align 4, !noundef !2
  %24 = getelementptr inbounds i8, ptr %_33, i32 4
  %25 = load i32, ptr %24, align 4, !noundef !2
  store ptr %23, ptr %ptr, align 4
  %26 = getelementptr inbounds i8, ptr %ptr, i32 4
  store i32 %25, ptr %26, align 4
  br label %bb10

bb11:                                             ; preds = %bb10, %bb9
  %_38.0 = load ptr, ptr %ptr, align 4, !noundef !2
  %27 = getelementptr inbounds i8, ptr %ptr, i32 4
  %_38.1 = load i32, ptr %27, align 4, !noundef !2
  store ptr %_38.0, ptr %_6, align 4
  %28 = getelementptr inbounds i8, ptr %_6, i32 4
  store i32 %_38.1, ptr %28, align 4
  %29 = load ptr, ptr %_6, align 4, !nonnull !2, !noundef !2
  %30 = getelementptr inbounds i8, ptr %_6, i32 4
  %31 = load i32, ptr %30, align 4, !noundef !2
  store ptr %29, ptr %_0, align 4
  %32 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %31, ptr %32, align 4
  br label %bb7

bb10:                                             ; preds = %bb8, %bb9
  %_37 = load ptr, ptr %ptr, align 4, !noundef !2
  %33 = getelementptr inbounds i8, ptr %ptr, i32 4
  %34 = load i32, ptr %33, align 4, !noundef !2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr %_37) #12
  br label %bb11

bb7:                                              ; preds = %bb18, %bb13, %bb11
  %35 = load ptr, ptr %_0, align 4, !noundef !2
  %36 = getelementptr inbounds i8, ptr %_0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1
  ret { ptr, i32 } %39

bb4:                                              ; preds = %bb1
  %_11.0 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %40 = getelementptr inbounds i8, ptr %layout, i32 4
  %_11.1 = load i32, ptr %40, align 4, !noundef !2
; call alloc::alloc::alloc
  %41 = call ptr @_ZN5alloc5alloc5alloc17h0724e8c5b062b9c5E(i32 %_11.0, i32 %_11.1) #12
  store ptr %41, ptr %raw_ptr, align 4
  br label %bb6

bb3:                                              ; preds = %bb1
  %42 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %43 = getelementptr inbounds i8, ptr %layout, i32 4
  %44 = load i32, ptr %43, align 4, !noundef !2
  store i32 %42, ptr %layout1, align 4
  %45 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds i8, ptr %layout1, i32 4
  %_39 = load i32, ptr %46, align 4, !noundef !2
  %self7 = load i32, ptr %layout1, align 4, !range !4, !noundef !2
  store i32 %self7, ptr %_44, align 4
  %_45 = load i32, ptr %_44, align 4, !range !4, !noundef !2
  %_46 = icmp uge i32 %_45, 1
  %_47 = icmp ule i32 %_45, -2147483648
  %_48 = and i1 %_46, %_47
  %47 = call ptr @__rust_alloc_zeroed(i32 %_39, i32 %_45) #12
  store ptr %47, ptr %raw_ptr, align 4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb4
  %ptr8 = load ptr, ptr %raw_ptr, align 4, !noundef !2
  %_50 = ptrtoint ptr %ptr8 to i32
  %48 = icmp eq i32 %_50, 0
  br i1 %48, label %bb13, label %bb14

bb13:                                             ; preds = %bb6
  store ptr null, ptr %self3, align 4
  store ptr null, ptr %self2, align 4
  %49 = load ptr, ptr @0, align 4, !noundef !2
  %50 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %49, ptr %_0, align 4
  %51 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %50, ptr %51, align 4
  br label %bb7

bb14:                                             ; preds = %bb6
  br i1 true, label %bb15, label %bb16

bb16:                                             ; preds = %bb15, %bb14
  store ptr %ptr8, ptr %_49, align 4
  %52 = load ptr, ptr %_49, align 4, !nonnull !2, !noundef !2
  store ptr %52, ptr %self3, align 4
  %v = load ptr, ptr %self3, align 4, !nonnull !2, !noundef !2
  store ptr %v, ptr %self2, align 4
  %v9 = load ptr, ptr %self2, align 4, !nonnull !2, !noundef !2
  store ptr %v9, ptr %_12, align 4
  %ptr10 = load ptr, ptr %_12, align 4, !nonnull !2, !noundef !2
  store ptr %ptr10, ptr %_62, align 4
  %53 = getelementptr inbounds i8, ptr %_62, i32 4
  store i32 %size, ptr %53, align 4
  %54 = load ptr, ptr %_62, align 4, !noundef !2
  %55 = getelementptr inbounds i8, ptr %_62, i32 4
  %56 = load i32, ptr %55, align 4, !noundef !2
  store ptr %54, ptr %_61, align 4
  %57 = getelementptr inbounds i8, ptr %_61, i32 4
  store i32 %56, ptr %57, align 4
  %ptr.0 = load ptr, ptr %_61, align 4, !noundef !2
  %58 = getelementptr inbounds i8, ptr %_61, i32 4
  %ptr.1 = load i32, ptr %58, align 4, !noundef !2
  br i1 true, label %bb17, label %bb18

bb15:                                             ; preds = %bb14
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr %ptr8) #12
  br label %bb16

bb18:                                             ; preds = %bb17, %bb16
  store ptr %ptr.0, ptr %_17, align 4
  %59 = getelementptr inbounds i8, ptr %_17, i32 4
  store i32 %ptr.1, ptr %59, align 4
  %60 = load ptr, ptr %_17, align 4, !nonnull !2, !noundef !2
  %61 = getelementptr inbounds i8, ptr %_17, i32 4
  %62 = load i32, ptr %61, align 4, !noundef !2
  store ptr %60, ptr %_0, align 4
  %63 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %62, ptr %63, align 4
  br label %bb7

bb17:                                             ; preds = %bb16
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr %ptr.0) #12
  br label %bb18
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nounwind
define hidden { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h3b9d7be09f4409e3E"(i32 %capacity, i1 zeroext %0) unnamed_addr #1 {
start:
  %_26 = alloca i32, align 4
  %pointer = alloca ptr, align 4
  %_24 = alloca ptr, align 4
  %result = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>", align 4
  %_7 = alloca %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>", align 4
  %layout = alloca %"core::alloc::layout::Layout", align 4
  %_0 = alloca %"alloc::raw_vec::RawVec<u8>", align 4
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %1 = zext i1 %0 to i8
  store i8 %1, ptr %init, align 1
  br i1 false, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i32 %capacity, 0
  br i1 %2, label %bb2, label %bb4

bb2:                                              ; preds = %bb1, %start
; call alloc::raw_vec::RawVec<T,A>::new_in
  %3 = call { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h067d02175ab5fefeE"() #12
  %4 = extractvalue { i32, ptr } %3, 0
  %5 = extractvalue { i32, ptr } %3, 1
  store i32 %4, ptr %_0, align 4
  %6 = getelementptr inbounds i8, ptr %_0, i32 4
  store ptr %5, ptr %6, align 4
  br label %bb14

bb4:                                              ; preds = %bb1
; call core::alloc::layout::Layout::array::inner
  %7 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hd9190c5b68f37686E(i32 1, i32 1, i32 %capacity) #12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr %_7, align 4
  %10 = getelementptr inbounds i8, ptr %_7, i32 4
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %_7, align 4, !range !5, !noundef !2
  %12 = icmp eq i32 %11, 0
  %_8 = select i1 %12, i32 1, i32 0
  %13 = icmp eq i32 %_8, 0
  br i1 %13, label %bb6, label %bb5

bb6:                                              ; preds = %bb4
  %layout.0 = load i32, ptr %_7, align 4, !range !4, !noundef !2
  %14 = getelementptr inbounds i8, ptr %_7, i32 4
  %layout.1 = load i32, ptr %14, align 4, !noundef !2
  store i32 %layout.0, ptr %layout, align 4
  %15 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %layout.1, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %layout, i32 4
  %alloc_size = load i32, ptr %16, align 4, !noundef !2
  %_31 = icmp ugt i32 %alloc_size, 2147483647
  br i1 %_31, label %bb16, label %bb17

bb5:                                              ; preds = %bb4
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h5aa749007dd89246E() #11
  unreachable

bb17:                                             ; preds = %bb6
  %17 = load i8, ptr %init, align 1, !range !6, !noundef !2
  %18 = trunc i8 %17 to i1
  %_15 = zext i1 %18 to i32
  %19 = icmp eq i32 %_15, 0
  br i1 %19, label %bb8, label %bb7

bb16:                                             ; preds = %bb6
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h5aa749007dd89246E() #11
  unreachable

bb8:                                              ; preds = %bb17
  %_17.0 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %20 = getelementptr inbounds i8, ptr %layout, i32 4
  %_17.1 = load i32, ptr %20, align 4, !noundef !2
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %21 = call { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2bfc236fcae3817bE"(ptr align 1 %alloc, i32 %_17.0, i32 %_17.1) #12
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  store ptr %22, ptr %result, align 4
  %24 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %23, ptr %24, align 4
  br label %bb11

bb7:                                              ; preds = %bb17
  %_19.0 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %25 = getelementptr inbounds i8, ptr %layout, i32 4
  %_19.1 = load i32, ptr %25, align 4, !noundef !2
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %26 = call { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hc17494fdaa77ad5aE"(ptr align 1 %alloc, i32 %_19.0, i32 %_19.1) #12
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  store ptr %27, ptr %result, align 4
  %29 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %28, ptr %29, align 4
  br label %bb11

bb11:                                             ; preds = %bb7, %bb8
  %30 = load ptr, ptr %result, align 4, !noundef !2
  %31 = ptrtoint ptr %30 to i32
  %32 = icmp eq i32 %31, 0
  %_20 = select i1 %32, i32 1, i32 0
  %33 = icmp eq i32 %_20, 0
  br i1 %33, label %bb13, label %bb12

bb13:                                             ; preds = %bb11
  %ptr.0 = load ptr, ptr %result, align 4, !nonnull !2, !noundef !2
  %34 = getelementptr inbounds i8, ptr %result, i32 4
  %ptr.1 = load i32, ptr %34, align 4, !noundef !2
  store ptr %ptr.0, ptr %pointer, align 4
  %35 = load ptr, ptr %pointer, align 4, !nonnull !2, !noundef !2
  store ptr %35, ptr %_24, align 4
  store i32 %capacity, ptr %_26, align 4
  %36 = load ptr, ptr %_24, align 4, !nonnull !2, !noundef !2
  %37 = getelementptr inbounds i8, ptr %_0, i32 4
  store ptr %36, ptr %37, align 4
  %38 = load i32, ptr %_26, align 4, !range !7, !noundef !2
  store i32 %38, ptr %_0, align 4
  br label %bb14

bb12:                                             ; preds = %bb11
  %_23.0 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %39 = getelementptr inbounds i8, ptr %layout, i32 4
  %_23.1 = load i32, ptr %39, align 4, !noundef !2
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h83c0974d7090fc4dE(i32 %_23.0, i32 %_23.1) #11
  unreachable

bb14:                                             ; preds = %bb2, %bb13
  %40 = load i32, ptr %_0, align 4, !range !7, !noundef !2
  %41 = getelementptr inbounds i8, ptr %_0, i32 4
  %42 = load ptr, ptr %41, align 4, !nonnull !2, !noundef !2
  %43 = insertvalue { i32, ptr } poison, i32 %40, 0
  %44 = insertvalue { i32, ptr } %43, ptr %42, 1
  ret { i32, ptr } %44

bb18:                                             ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nounwind
define hidden void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e8b5904e38cae11E"(ptr sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 4 %_0, ptr align 4 %self) unnamed_addr #1 {
start:
  %self1 = alloca ptr, align 4
  %_9 = alloca { ptr, %"core::alloc::layout::Layout" }, align 4
  %layout = alloca %"core::alloc::layout::Layout", align 4
  br i1 false, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_3 = load i32, ptr %self, align 4, !noundef !2
  %0 = icmp eq i32 %_3, 0
  br i1 %0, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  %1 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_0, i32 0, i32 1
  store i32 0, ptr %1, align 4
  br label %bb4

bb3:                                              ; preds = %bb1
  %rhs = load i32, ptr %self, align 4, !noundef !2
  %size = mul nuw i32 1, %rhs
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %size, ptr %2, align 4
  store i32 1, ptr %layout, align 4
  %3 = getelementptr inbounds i8, ptr %self, i32 4
  %self2 = load ptr, ptr %3, align 4, !nonnull !2, !noundef !2
  store ptr %self2, ptr %self1, align 4
  %4 = load ptr, ptr %self1, align 4, !nonnull !2, !noundef !2
  store ptr %4, ptr %_9, align 4
  %5 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %6 = getelementptr inbounds i8, ptr %layout, i32 4
  %7 = load i32, ptr %6, align 4, !noundef !2
  %8 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_9, i32 0, i32 1
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 %7, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %_9, i32 12, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  ret void
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nounwind
define hidden { i32, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h067d02175ab5fefeE"() unnamed_addr #1 {
start:
  %_3 = alloca ptr, align 4
  %_2 = alloca ptr, align 4
  %_0 = alloca %"alloc::raw_vec::RawVec<u8>", align 4
  br i1 true, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  store ptr inttoptr (i32 1 to ptr), ptr %_3, align 4
  %0 = load ptr, ptr %_3, align 4, !nonnull !2, !noundef !2
  store ptr %0, ptr %_2, align 4
  %1 = load ptr, ptr %_2, align 4, !nonnull !2, !noundef !2
  %2 = getelementptr inbounds i8, ptr %_0, i32 4
  store ptr %1, ptr %2, align 4
  store i32 0, ptr %_0, align 4
  %3 = load i32, ptr %_0, align 4, !range !7, !noundef !2
  %4 = getelementptr inbounds i8, ptr %_0, i32 4
  %5 = load ptr, ptr %4, align 4, !nonnull !2, !noundef !2
  %6 = insertvalue { i32, ptr } poison, i32 %3, 0
  %7 = insertvalue { i32, ptr } %6, ptr %5, 1
  ret { i32, ptr } %7

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr inttoptr (i32 1 to ptr)) #12
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nounwind
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd6575ec169a81c2bE"(ptr align 1 %self, ptr %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_14 = alloca i32, align 4
  %layout1 = alloca %"core::alloc::layout::Layout", align 4
  %layout = alloca %"core::alloc::layout::Layout", align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %_4 = load i32, ptr %3, align 4, !noundef !2
  %4 = icmp eq i32 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %5 = load i32, ptr %layout, align 4, !range !4, !noundef !2
  %6 = getelementptr inbounds i8, ptr %layout, i32 4
  %7 = load i32, ptr %6, align 4, !noundef !2
  store i32 %5, ptr %layout1, align 4
  %8 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %layout1, i32 4
  %_9 = load i32, ptr %9, align 4, !noundef !2
  %self2 = load i32, ptr %layout1, align 4, !range !4, !noundef !2
  store i32 %self2, ptr %_14, align 4
  %_15 = load i32, ptr %_14, align 4, !range !4, !noundef !2
  %_16 = icmp uge i32 %_15, 1
  %_17 = icmp ule i32 %_15, -2147483648
  %_18 = and i1 %_16, %_17
  call void @__rust_dealloc(ptr %ptr, i32 %_9, i32 %_15) #12
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hc17494fdaa77ad5aE"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h11acf1e6044a31b0E(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext true) #12
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2bfc236fcae3817bE"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h11acf1e6044a31b0E(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext false) #12
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3e15510ab5030c6cE"(ptr align 4 %self) unnamed_addr #1 {
start:
  %_10 = alloca %"core::ptr::metadata::PtrComponents<[u8]>", align 4
  %_9 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %0 = getelementptr inbounds i8, ptr %self, i32 4
  %self1 = load ptr, ptr %0, align 4, !nonnull !2, !noundef !2
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i32 0, i32 1
  %len = load i32, ptr %1, align 4, !noundef !2
  store ptr %self1, ptr %_10, align 4
  %2 = getelementptr inbounds i8, ptr %_10, i32 4
  store i32 %len, ptr %2, align 4
  %3 = load ptr, ptr %_10, align 4, !noundef !2
  %4 = getelementptr inbounds i8, ptr %_10, i32 4
  %5 = load i32, ptr %4, align 4, !noundef !2
  store ptr %3, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %5, ptr %6, align 4
  %_2.0 = load ptr, ptr %_9, align 4, !noundef !2
  %7 = getelementptr inbounds i8, ptr %_9, i32 4
  %_2.1 = load i32, ptr %7, align 4, !noundef !2
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f014cf119c31b61E"(ptr align 4 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h2e8b5904e38cae11E"(ptr sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") align 4 %_2, ptr align 4 %self) #12
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", ptr %_2, i32 0, i32 1
  %1 = load i32, ptr %0, align 4, !range !5, !noundef !2
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 4, !nonnull !2, !noundef !2
  %4 = getelementptr inbounds { ptr, %"core::alloc::layout::Layout" }, ptr %_2, i32 0, i32 1
  %layout.0 = load i32, ptr %4, align 4, !range !4, !noundef !2
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  %layout.1 = load i32, ptr %5, align 4, !noundef !2
  %_7 = getelementptr inbounds i8, ptr %self, i32 8
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd6575ec169a81c2bE"(ptr align 1 %_7, ptr %ptr, i32 %layout.0, i32 %layout.1) #12
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17h995b81875632703eE() unnamed_addr #1 {
start:
  %_0.i = alloca %"core::fmt::rt::Argument<'_>", align 4
  %_7 = alloca [1 x %"core::fmt::rt::Argument<'_>"], align 4
  %_3 = alloca %"core::fmt::Arguments<'_>", align 4
  %res = alloca %"alloc::string::String", align 4
  %_1 = alloca %"alloc::string::String", align 4
  store ptr @alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0, ptr %_0.i, align 4
  %0 = getelementptr inbounds i8, ptr %_0.i, i32 4
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17ha28ed929bf03bf61E", ptr %0, align 4
  %1 = load ptr, ptr %_0.i, align 4, !nonnull !2, !align !3, !noundef !2
  %2 = getelementptr inbounds i8, ptr %_0.i, i32 4
  %3 = load ptr, ptr %2, align 4, !nonnull !2, !noundef !2
  %4 = insertvalue { ptr, ptr } poison, ptr %1, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %3, 1
  %_8.0 = extractvalue { ptr, ptr } %5, 0
  %_8.1 = extractvalue { ptr, ptr } %5, 1
  %6 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_7, i32 0, i32 0
  store ptr %_8.0, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  store ptr %_8.1, ptr %7, align 4
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h2a0a56272387fc98E(ptr sret(%"core::fmt::Arguments<'_>") align 4 %_3, ptr align 4 @alloc_68ac15728a1e6ba4743b718936db7fdf, i32 1, ptr align 4 %_7, i32 1) #12
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17hcabaa1bb48d19b4eE(ptr sret(%"alloc::string::String") align 4 %res, ptr align 4 %_3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_1, ptr align 4 %res, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha9f66f9c9f13ecfcE"(ptr align 4 %_1) #12
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17ha28ed929bf03bf61E"(ptr align 4, ptr align 4) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking9panic_fmt17hef404fc8f89d76c5E(ptr align 4, ptr align 4) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare hidden i1 @llvm.expect.i1(i1, i1) #3

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking5panic17hdad5696100f432bfE(ptr align 1, i32, ptr align 4) unnamed_addr #2

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: noinline nounwind
declare dso_local void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h08a61377f715b9a3E(ptr, ptr, i32, i32, i32) unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; alloc::fmt::format::format_inner
; Function Attrs: nounwind
declare dso_local void @_ZN5alloc3fmt6format12format_inner17h744266987eff6a86E(ptr sret(%"alloc::string::String") align 4, ptr align 4) unnamed_addr #1

; core::ptr::read_volatile::precondition_check
; Function Attrs: noinline nounwind
declare dso_local void @_ZN4core3ptr13read_volatile18precondition_check17h46b8b8512409feb7E(ptr, i32) unnamed_addr #4

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0)
declare dso_local noalias ptr @__rust_alloc(i32, i32 allocalign) unnamed_addr #6

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: noinline nounwind
declare dso_local void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h027166099ee05b30E"(ptr) unnamed_addr #4

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0)
declare dso_local noalias ptr @__rust_alloc_zeroed(i32, i32 allocalign) unnamed_addr #7

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nounwind
declare dso_local void @_ZN5alloc5alloc18handle_alloc_error17h83c0974d7090fc4dE(i32, i32) unnamed_addr #8

; alloc::raw_vec::capacity_overflow
; Function Attrs: noinline noreturn nounwind
declare dso_local void @_ZN5alloc7raw_vec17capacity_overflow17h5aa749007dd89246E() unnamed_addr #9

; Function Attrs: nounwind allockind("free")
declare dso_local void @__rust_dealloc(ptr allocptr, i32, i32) unnamed_addr #10

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noinline nounwind "target-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #7 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #8 = { cold noreturn nounwind "target-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind "target-cpu"="generic" }
attributes #10 = { nounwind allockind("free") "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.78.0-nightly (8f359beca 2024-02-23)"}
!1 = !{i64 4}
!2 = !{}
!3 = !{i64 1}
!4 = !{i32 1, i32 -2147483647}
!5 = !{i32 0, i32 -2147483647}
!6 = !{i8 0, i8 2}
!7 = !{i32 0, i32 -2147483648}
