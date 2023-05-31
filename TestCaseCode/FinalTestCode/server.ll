; ModuleID = 'server.cc'
source_filename = "server.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i8, i8, [14 x i8] }

@serv_sock = global i32 0, align 4
@clint_sock = global i32 0, align 4
@serv_addr = global %struct.sockaddr_in zeroinitializer, align 4
@clint_addr = global %struct.sockaddr_in zeroinitializer, align 4
@clnt_addr_size = global i32 0, align 4
@returnTrue = global i8 0, align 1
@.str = private unnamed_addr constant [14 x i8] c"accept error\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"waiting... %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s <port>\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"socket error\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bind error\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"listen error\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server closed\0A\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define void @_Z9timeCountv() #0 {
entry:
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, i32* %count, align 4
  store i32 16, i32* @clnt_addr_size, align 4
  %0 = load i32, i32* @serv_sock, align 4
  %call = call i32 @"\01_accept"(i32 %0, %struct.sockaddr* bitcast (%struct.sockaddr_in* @clint_addr to %struct.sockaddr*), i32* @clnt_addr_size)
  store i32 %call, i32* @clint_sock, align 4
  %1 = load i32, i32* @clint_sock, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, i64* %t1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end
  %call3 = call i32 @"\01_sleep"(i32 1)
  %2 = load i32, i32* %count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %count, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %call5 = call i64 @"\01_clock"()
  store i64 %call5, i64* %t2, align 8
  %3 = load i32, i32* %count, align 4
  %rem = srem i32 %3, 2
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.cond
  %4 = load i32, i32* @clint_sock, align 4
  %call8 = call i64 @"\01_write"(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 2)
  br label %if.end10

if.else:                                          ; preds = %for.cond
  %5 = load i32, i32* @clint_sock, align 4
  %call9 = call i64 @"\01_write"(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 2)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  br label %for.cond
}

declare i32 @"\01_accept"(i32, %struct.sockaddr*, i32*) #1

declare i32 @printf(i8*, ...) #1

declare i64 @"\01_clock"() #1

declare i32 @"\01_sleep"(i32) #1

declare i64 @"\01_write"(i32, i8*, i64) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %2)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @socket(i32 2, i32 1, i32 0)
  store i32 %call1, i32* @serv_sock, align 4
  %3 = load i32, i32* @serv_sock, align 4
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  call void @llvm.memset.p0i8.i64(i8* align 4 getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 0), i8 0, i64 16, i1 false)
  store i8 2, i8* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 1), align 1
  store i32 0, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 3, i32 0), align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @atoi(i8* %5)
  %conv = trunc i32 %call7 to i16
  %call8 = call zeroext i16 @_ZL12_OSSwapInt16t(i16 zeroext %conv)
  store i16 %call8, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 2), align 2
  %6 = load i32, i32* @serv_sock, align 4
  %call9 = call i32 @"\01_bind"(i32 %6, %struct.sockaddr* bitcast (%struct.sockaddr_in* @serv_addr to %struct.sockaddr*), i32 16)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end5
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end5
  %7 = load i32, i32* @serv_sock, align 4
  %call14 = call i32 @"\01_listen"(i32 %7, i32 5)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  call void @_Z9timeCountv()
  %8 = load i32, i32* @serv_sock, align 4
  %call19 = call i32 @"\01_close"(i32 %8)
  %9 = load i32, i32* @clint_sock, align 4
  %call20 = call i32 @"\01_close"(i32 %9)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @_ZL12_OSSwapInt16t(i16 zeroext %_data) #5 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, i16* %_data.addr, align 2
  %0 = load i16, i16* %_data.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, i16* %_data.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %or = or i32 %shl, %shr
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

declare i32 @atoi(i8*) #1

declare i32 @"\01_bind"(i32, %struct.sockaddr*, i32) #1

declare i32 @"\01_listen"(i32, i32) #1

declare i32 @"\01_close"(i32) #1

attributes #0 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Apple clang version 14.0.0 (clang-1400.0.29.102)"}
