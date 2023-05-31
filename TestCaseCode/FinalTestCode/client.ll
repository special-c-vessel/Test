; ModuleID = 'client.cc'
source_filename = "client.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.std::__1::basic_istream" = type { i32 (...)**, i64, %"class.std::__1::basic_ios.base" }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::random_device" = type { i32 }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { i8*, i64, i64 }
%"class.std::__1::mersenne_twister_engine" = type { [624 x i32], i64 }
%"class.std::__1::uniform_int_distribution" = type { %"class.std::__1::uniform_int_distribution<>::param_type" }
%"class.std::__1::uniform_int_distribution<>::param_type" = type { i32, i32 }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct.sockaddr = type { i8, i8, [14 x i8] }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::__compressed_pair_elem.0" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::__non_trivial_if" = type { i8 }
%"class.std::__1::__independent_bits_engine" = type { %"class.std::__1::mersenne_twister_engine"*, i64, i64, i64, i64, i32, i32, i32, i32 }
%"struct.std::__1::integral_constant" = type { i8 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::ostreambuf_iterator" = type { %"class.std::__1::basic_streambuf"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ios" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32, [4 x i8] }>
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"struct.std::__1::iterator" = type { i8 }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }

@my_sock = global i32 0, align 4
@serv_addr = global %struct.sockaddr_in zeroinitializer, align 4
@message = global [100 x i8] zeroinitializer, align 1
@thread_Cnt = global i32 0, align 4
@str_len = global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"It is work\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\EC\9E\85\EB\A0\A5\EB\90\9C \EA\B0\92: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\EC\84\B1\EA\B3\B5\ED\95\9C \EC\98\88\EC\A0\9C\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\EC\8B\A4\ED\8C\A8\ED\95\9C \EC\98\88\EC\A0\9C aaa \0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s <IP> <PORT>\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"socket error \0A\00", align 1
@_ZNSt3__14coutE = external global %"class.std::__1::basic_ostream", align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"Input number: \00", align 1
@_ZNSt3__13cinE = external global %"class.std::__1::basic_istream", align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"result : \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"normaly worked!!\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"close client\0A\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8


;======================================================================
;======================================================================


; FILE * file = fopen("test.txt", "w+");
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
@file = global %struct.__sFILE* null, align 8
@.str.openfile = private unnamed_addr constant [11 x i8] c"record.txt\00", align 1
@.str.write = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cc, i8* null }]

;비교를 위한 전역변수 선언
;int tempint;
;float tempfloat;
@tempint = global i32 0, align 4
@tempfloat = global float 0.000000e+00, align 4

;변수명 출력
@__const.main.var_1_name = private unnamed_addr constant [10 x i8] c"randomNum\00", align 1
@__const.main.var_2_name = private unnamed_addr constant [10 x i8] c"userInput\00", align 1
@__const.main.var_3_name = private unnamed_addr constant [11 x i8] c"thread_Cnt\00", align 1

@__const.main.var_5_name = private unnamed_addr constant [7 x i8] c"divNum\00", align 1
@__const.main.var_6_name = private unnamed_addr constant [8 x i8] c"message\00", align 1
@__const.main.var_7_name = private unnamed_addr constant [7 x i8] c"result\00", align 1
@__const.main.var_8_name = private unnamed_addr constant [8 x i8] c"tempnum\00", align 1


;op type
@.str.op_declare = private unnamed_addr constant [9 x i8] c"declare\0A\00", align 1
@.str.op_operation = private unnamed_addr constant [11 x i8] c"operation\0A\00", align 1
@.str.op_add = private unnamed_addr constant [5 x i8] c"add\0A\00", align 1
@.str.op_mul = private unnamed_addr constant [5 x i8] c"mul\0A\00", align 1
@.str.op_sub = private unnamed_addr constant [5 x i8] c"sub\0A\00", align 1

;출력문 형식
@.str.print_str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.print_int = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.print_ptr = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.print_chr = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

;typeinfo 
%"class.std::type_info" = type { i32 (...)**, i64 }
@_ZTIi = external constant i8*

define linkonce_odr hidden i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* %this) #444 align 2 {
entry:
  %__v.addr.i = alloca i64, align 8
  %this.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::type_info"* %this, %"class.std::type_info"** %this.addr, align 8
  %this1 = load %"class.std::type_info"*, %"class.std::type_info"** %this.addr, align 8
  %__type_name = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %0 = load i64, i64* %__type_name, align 8
  store i64 %0, i64* %__v.addr.i, align 8
  %1 = load i64, i64* %__v.addr.i, align 8
  %and.i = and i64 %1, 9223372036854775807
  %2 = inttoptr i64 %and.i to i8*
  ret i8* %2
}

@.str.int = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.float = private unnamed_addr constant [7 x i8] c"float\0A\00", align 1
@.str.char = private unnamed_addr constant [6 x i8] c"char\0A\00", align 1
@.str.string = private unnamed_addr constant [5 x i8] c"str\0A\00", align 1

define internal void @_GLOBAL__sub_I_main.cc() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

define internal void @__cxx_global_var_init() #333 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.openfile, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.write, i64 0, i64 0))
  store %struct.__sFILE* %call, %struct.__sFILE** @file, align 8
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #222

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #222

;======================================================================
;======================================================================


; Function Attrs: noinline optnone ssp uwtable
define void @_Z8testfuncv() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone ssp uwtable
define void @_Z5errorPc(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @exit(i32 1) #10
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline optnone ssp uwtable
define i8* @_Z9timeCountPv(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %cnt2 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i32 0, i32* %cnt2, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %call = call i32 @"\01_sleep"(i32 1)
  %0 = load i32, i32* %cnt2, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %cnt2, align 4
  %1 = load i32, i32* %cnt2, align 4
  %rem = srem i32 %1, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* @thread_Cnt, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 0, i32* @thread_Cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.body
}

declare i32 @"\01_sleep"(i32) #1

; Function Attrs: noinline optnone ssp uwtable
define i8* @_Z11exeTestFuncPv(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %tempstr = alloca [50 x i8], align 1
  %boot = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %boot, align 8
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %tempstr, i64 0, i64 0
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay)
  %call1 = call i32 @"\01_sleep"(i32 1)
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %tempstr, i64 0, i64 0
  %0 = load i8*, i8** %boot, align 8
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* %0)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %tempstr, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  call void @_Z8testfuncv()
  br label %if.end

if.else:                                          ; preds = %while.body
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.body
}

declare i32 @scanf(i8*, ...) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:

;======================================================================
;======================================================================
%loadfile = load %struct.__sFILE*, %struct.__sFILE** @file, align 8
;======================================================================


  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rd = alloca %"class.std::__1::random_device", align 4
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %gen = alloca %"class.std::__1::mersenne_twister_engine", align 8
  %dis = alloca %"class.std::__1::uniform_int_distribution", align 4
  %t0 = alloca %struct._opaque_pthread_t*, align 8
  %t1 = alloca %struct._opaque_pthread_t*, align 8
  %cnt = alloca i32, align 4
  %randomNum = alloca i32, align 4
  %userInput = alloca i32, align 4
  %tempnum = alloca i32, align 4
  %divNum = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc(%"class.std::__1::basic_string"* %ref.tmp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %call1 = invoke %"class.std::__1::random_device"* @_ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::random_device"* %rd, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp)
  %call7 = invoke i32 @_ZNSt3__113random_deviceclEv(%"class.std::__1::random_device"* %rd)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  %call9 = invoke %"class.std::__1::mersenne_twister_engine"* @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B6v15006Ej(%"class.std::__1::mersenne_twister_engine"* %gen, i32 %call7)
          to label %invoke.cont8 unwind label %lpad5

invoke.cont8:                                     ; preds = %invoke.cont6
  %call11 = invoke %"class.std::__1::uniform_int_distribution"* @_ZNSt3__124uniform_int_distributionIiEC1Eii(%"class.std::__1::uniform_int_distribution"* %dis, i32 -5, i32 5)
          to label %invoke.cont10 unwind label %lpad5

invoke.cont10:                                    ; preds = %invoke.cont8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont10
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call13 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %2)
          to label %invoke.cont12 unwind label %lpad5

invoke.cont12:                                    ; preds = %if.then
  invoke void @exit(i32 1) #10
          to label %invoke.cont14 unwind label %lpad5

invoke.cont14:                                    ; preds = %invoke.cont12
  unreachable

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %call4 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %ref.tmp)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont64, %while.end, %invoke.cont59, %invoke.cont57, %invoke.cont55, %if.end54, %if.then47, %invoke.cont39, %invoke.cont37, %invoke.cont34, %if.then33, %while.body, %invoke.cont26, %invoke.cont23, %if.end21, %if.then18, %if.end, %invoke.cont12, %if.then, %invoke.cont8, %invoke.cont6, %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %call70 = invoke %"class.std::__1::random_device"* @_ZNSt3__113random_deviceD1Ev(%"class.std::__1::random_device"* %rd)
          to label %invoke.cont69 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont10
  %call16 = invoke i32 @socket(i32 2, i32 1, i32 0)
          to label %invoke.cont15 unwind label %lpad5

invoke.cont15:                                    ; preds = %if.end
  store i32 %call16, i32* @my_sock, align 4
  %9 = load i32, i32* @my_sock, align 4
  %cmp17 = icmp eq i32 %9, -1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %invoke.cont15
  %call20 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
          to label %invoke.cont19 unwind label %lpad5

invoke.cont19:                                    ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %invoke.cont19, %invoke.cont15
  call void @llvm.memset.p0i8.i64(i8* align 4 getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 0), i8 0, i64 16, i1 false)
  store i8 2, i8* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 1), align 1
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx22, align 8
  %call24 = invoke i32 @inet_addr(i8* %11)
          to label %invoke.cont23 unwind label %lpad5

invoke.cont23:                                    ; preds = %if.end21
  store i32 %call24, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 3, i32 0), align 4
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %arrayidx25, align 8
  %call27 = invoke i32 @atoi(i8* %13)
          to label %invoke.cont26 unwind label %lpad5

invoke.cont26:                                    ; preds = %invoke.cont23
  %conv = trunc i32 %call27 to i16
  %call29 = invoke zeroext i16 @_ZL12_OSSwapInt16t(i16 zeroext %conv)
          to label %invoke.cont28 unwind label %lpad5

invoke.cont28:                                    ; preds = %invoke.cont26
  store i16 %call29, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @serv_addr, i32 0, i32 2), align 2
  store i32 0, i32* %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %invoke.cont28
  br label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* @my_sock, align 4
  %call31 = invoke i32 @"\01_connect"(i32 %14, %struct.sockaddr* bitcast (%struct.sockaddr_in* @serv_addr to %struct.sockaddr*), i32 16)
          to label %invoke.cont30 unwind label %lpad5

invoke.cont30:                                    ; preds = %while.body
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then33, label %if.end63

if.then33:                                        ; preds = %invoke.cont30
  %15 = load i32, i32* @my_sock, align 4
  %call35 = invoke i64 @"\01_read"(i32 %15, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @message, i64 0, i64 0), i64 100)
          to label %invoke.cont34 unwind label %lpad5

invoke.cont34:                                    ; preds = %if.then33

%tempvar = alloca i32, align 4
  %var_6_1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @message, i64 0, i64 0), align 1
  %conv_6_1 = sext i8 %var_6_1 to i32
  store i32 %conv_6_1, i32* %tempvar, align 4

  %var_6_value = load i32, i32* %tempvar, align 4
  %var_6_name_ptr = alloca [8 x i8], align 1
  %temp_var_6_name = bitcast [8 x i8]* %var_6_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_6_name, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.var_6_name, i32 0, i32 0), i64 8, i1 false)
  %var_6_name = getelementptr inbounds [8 x i8], [8 x i8]* %var_6_name_ptr, i64 0, i64 0
  %var_6_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_6_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_6_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_6_name)
  %temp_var_6_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.string, i64 0, i64 0))
  %temp_var_6_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_6_value)
  %temp_var_6_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %tempvar)
  %temp_var_6_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 117)
  %temp_var_6_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 37)


  %conv36 = trunc i64 %call35 to i32
  store i32 %conv36, i32* @str_len, align 4
  %call38 = invoke i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_(%"class.std::__1::uniform_int_distribution"* %dis, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %gen)
          to label %invoke.cont37 unwind label %lpad5

invoke.cont37:                                    ; preds = %invoke.cont34
  store i32 %call38, i32* %randomNum, align 4

  ;aaaaaa
  %var_1_value = load i32, i32* %randomNum, align 4
  %var_1_name_ptr = alloca [10 x i8], align 1
  %temp_var_1_name = bitcast [10 x i8]* %var_1_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_1_name, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.var_1_name, i32 0, i32 0), i64 10, i1 false)
  %var_1_name = getelementptr inbounds [10 x i8], [10 x i8]* %var_1_name_ptr, i64 0, i64 0
  %var_1_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_1_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_1_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_name)
  %temp_var_1_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_type)
  %temp_var_1_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_1_value)
  %temp_var_1_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %randomNum)
  %temp_var_1_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 118)
  %temp_var_1_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 29)


  %call40 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
          to label %invoke.cont39 unwind label %lpad5

invoke.cont39:                                    ; preds = %invoke.cont37
  %call42 = invoke nonnull align 8 dereferenceable(16) %"class.std::__1::basic_istream"* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(%"class.std::__1::basic_istream"* @_ZNSt3__13cinE, i32* nonnull align 4 dereferenceable(4) %userInput)
          to label %invoke.cont41 unwind label %lpad5

invoke.cont41:                                    ; preds = %invoke.cont39
  %16 = load i32, i32* %userInput, align 4

  ;;aaaaaa
  %var_2_value = load i32, i32* %userInput, align 4
  %var_2_name_ptr = alloca [10 x i8], align 1
  %temp_var_2_name = bitcast [10 x i8]* %var_2_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_2_name, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.var_2_name, i32 0, i32 0), i64 10, i1 false)
  %var_2_name = getelementptr inbounds [10 x i8], [10 x i8]* %var_2_name_ptr, i64 0, i64 0
  %var_2_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_2_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_2_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_2_name)
  %temp_var_2_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_2_type)
  %temp_var_2_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_2_value)
  %temp_var_2_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %userInput)
  %temp_var_2_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 122)
  %temp_var_2_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 20)


  %cmp43 = icmp eq i32 %16, -1
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %invoke.cont41
  br label %while.end

if.end45:                                         ; preds = %invoke.cont41
  %17 = load i32, i32* @str_len, align 4
  %cmp46 = icmp eq i32 %17, -1
  br i1 %cmp46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end45
  %call49 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
          to label %invoke.cont48 unwind label %lpad5

invoke.cont48:                                    ; preds = %if.then47
  br label %if.end50

if.end50:                                         ; preds = %invoke.cont48, %if.end45
  %18 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @message, i64 0, i64 0), align 1
  %conv51 = sext i8 %18 to i32
  %cmp52 = icmp eq i32 %conv51, 49
  br i1 %cmp52, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end50
  store i32 1, i32* %tempnum, align 4

  ;aaaaaaa
  %var_8_value = load i32, i32* %tempnum, align 4
  %var_8_name_ptr = alloca [8 x i8], align 1
  %temp_var_8_name = bitcast [8 x i8]* %var_8_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_8_name, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.var_8_name, i32 0, i32 0), i64 8, i1 false)
  %var_8_name = getelementptr inbounds [8 x i8], [8 x i8]* %var_8_name_ptr, i64 0, i64 0
  %var_8_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_8_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_8_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_8_name)
  %temp_var_8_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_8_type)
  %temp_var_8_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_8_value)
  %temp_var_8_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %tempnum)
  %temp_var_8_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 137)
  %temp_var_8_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27)



  br label %if.end54

if.else:                                          ; preds = %if.end50
  store i32 0, i32* %tempnum, align 4

   ;aaaaaaa
  %var_9_value = load i32, i32* %tempnum, align 4
  %var_9_name_ptr = alloca [8 x i8], align 1
  %temp_var_9_name = bitcast [8 x i8]* %var_9_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_9_name, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.var_8_name, i32 0, i32 0), i64 8, i1 false)
  %var_9_name = getelementptr inbounds [8 x i8], [8 x i8]* %var_9_name_ptr, i64 0, i64 0
  %var_9_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_9_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_9_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_9_name)
  %temp_var_9_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_9_type)
  %temp_var_9_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_9_value)
  %temp_var_9_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %tempnum)
  %temp_var_9_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 139)
  %temp_var_9_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27)

  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then53
  %19 = load i32, i32* %randomNum, align 4
  %20 = load i32, i32* %tempnum, align 4
  %mul = mul nsw i32 %19, %20
  store i32 %mul, i32* %divNum, align 4

;aaaaaa
  %var_5_value = load i32, i32* %divNum, align 4
  %var_5_name_ptr = alloca [7 x i8], align 1
  %temp_var_5_name = bitcast [7 x i8]* %var_5_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_5_name, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.var_5_name, i32 0, i32 0), i64 7, i1 false)
  %var_5_name = getelementptr inbounds [7 x i8], [7 x i8]* %var_5_name_ptr, i64 0, i64 0
  %var_5_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_5_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_5_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_5_name)
  %temp_var_5_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_5_type)
  %temp_var_5_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_5_value)
  %temp_var_5_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %divNum)
  %temp_var_5_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 141)
  %temp_var_5_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 26)
  ;aaaaaaaaaaa

  %21 = load i32, i32* %userInput, align 4
  %22 = load i32, i32* %randomNum, align 4
  %add = add nsw i32 %21, %22
  %23 = load i32, i32* %divNum, align 4
  %div = sdiv i32 %add, %23
  store i32 %div, i32* %result, align 4

  ;aaaaaaa
  %var_7_value = load i32, i32* %result, align 4
  %var_7_name_ptr = alloca [7 x i8], align 1
  %temp_var_7_name = bitcast [7 x i8]* %var_7_name_ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_7_name, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.var_7_name, i32 0, i32 0), i64 7, i1 false)
  %var_7_name = getelementptr inbounds [7 x i8], [7 x i8]* %var_7_name_ptr, i64 0, i64 0
  %var_7_type = call i8* @_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi to %"class.std::type_info"*)) #888

  %temp_var_7_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64 0, i64 0))
  %temp_var_7_2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_7_name)
  %temp_var_7_3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8* %var_7_type)
  %temp_var_7_4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i32 0, i32 0), i32 %var_7_value)
  %temp_var_7_5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32* %result)
  %temp_var_7_6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 143)
  %temp_var_7_7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32 27)



  %call56 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont55 unwind label %lpad5

invoke.cont55:                                    ; preds = %if.end54
  %24 = load i32, i32* %result, align 4
  %call58 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"* %call56, i32 %24)
          to label %invoke.cont57 unwind label %lpad5

invoke.cont57:                                    ; preds = %invoke.cont55
  %call60 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %call58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
          to label %invoke.cont59 unwind label %lpad5

invoke.cont59:                                    ; preds = %invoke.cont57
  %call62 = invoke nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZNSt3__14coutE, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
          to label %invoke.cont61 unwind label %lpad5

invoke.cont61:                                    ; preds = %invoke.cont59
  br label %if.end63

if.end63:                                         ; preds = %invoke.cont61, %invoke.cont30
  br label %while.cond

while.end:                                        ; preds = %if.then44
  %25 = load i32, i32* @my_sock, align 4
  %call65 = invoke i32 @"\01_close"(i32 %25)
          to label %invoke.cont64 unwind label %lpad5

invoke.cont64:                                    ; preds = %while.end
  %call67 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
          to label %invoke.cont66 unwind label %lpad5

invoke.cont66:                                    ; preds = %invoke.cont64
  store i32 0, i32* %retval, align 4
  %call68 = call %"class.std::__1::random_device"* @_ZNSt3__113random_deviceD1Ev(%"class.std::__1::random_device"* %rd)
  %26 = load i32, i32* %retval, align 4
  ret i32 %26

invoke.cont69:                                    ; preds = %lpad5
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont69, %invoke.cont3
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val71 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val71

terminate.lpad:                                   ; preds = %lpad5, %lpad
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  call void @__clang_call_terminate(i8* %28) #11
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006IDnEEPKc(%"class.std::__1::basic_string"* returned %this, i8* %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc(%"class.std::__1::basic_string"* %this1, i8* %0)
  ret %"class.std::__1::basic_string"* %this1
}

declare %"class.std::__1::random_device"* @_ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(%"class.std::__1::random_device"* returned, %"class.std::__1::basic_string"* nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* returned) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #4 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #12
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @_ZNSt3__113random_deviceclEv(%"class.std::__1::random_device"*) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::mersenne_twister_engine"* @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1B6v15006Ej(%"class.std::__1::mersenne_twister_engine"* returned %this, i32 %__sd) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__sd.addr = alloca i32, align 4
  store %"class.std::__1::mersenne_twister_engine"* %this, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  store i32 %__sd, i32* %__sd.addr, align 4
  %this1 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  %0 = load i32, i32* %__sd.addr, align 4
  %call = call %"class.std::__1::mersenne_twister_engine"* @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B6v15006Ej(%"class.std::__1::mersenne_twister_engine"* %this1, i32 %0)
  ret %"class.std::__1::mersenne_twister_engine"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::uniform_int_distribution"* @_ZNSt3__124uniform_int_distributionIiEC1Eii(%"class.std::__1::uniform_int_distribution"* returned %this, i32 %__a, i32 %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution"*, align 8
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store %"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %this1 = load %"class.std::__1::uniform_int_distribution"*, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %call = call %"class.std::__1::uniform_int_distribution"* @_ZNSt3__124uniform_int_distributionIiEC2Eii(%"class.std::__1::uniform_int_distribution"* %this1, i32 %0, i32 %1)
  ret %"class.std::__1::uniform_int_distribution"* %this1
}

declare i32 @socket(i32, i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @inet_addr(i8*) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal zeroext i16 @_ZL12_OSSwapInt16t(i16 zeroext %_data) #6 {
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

declare i32 @"\01_connect"(i32, %struct.sockaddr*, i32) #1

declare i64 @"\01_read"(i32, i8*, i64) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_(%"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %__g) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution"*, align 8
  %__g.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  store %"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  store %"class.std::__1::mersenne_twister_engine"* %__g, %"class.std::__1::mersenne_twister_engine"** %__g.addr, align 8
  %this1 = load %"class.std::__1::uniform_int_distribution"*, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  %0 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__g.addr, align 8
  %__p_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution", %"class.std::__1::uniform_int_distribution"* %this1, i32 0, i32 0
  %call = call i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE(%"class.std::__1::uniform_int_distribution"* %this1, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %0, %"class.std::__1::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %__p_)
  ret i32 %call
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str) #0 {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %1 = load i8*, i8** %__str.addr, align 8
  %2 = load i8*, i8** %__str.addr, align 8
  %call = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #12
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0, i8* %1, i64 %call)
  ret %"class.std::__1::basic_ostream"* %call1
}

declare nonnull align 8 dereferenceable(16) %"class.std::__1::basic_istream"* @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi(%"class.std::__1::basic_istream"*, i32* nonnull align 4 dereferenceable(4)) #1

declare nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(%"class.std::__1::basic_ostream"*, i32) #1

declare i32 @"\01_close"(i32) #1

declare %"class.std::__1::random_device"* @_ZNSt3__113random_deviceD1Ev(%"class.std::__1::random_device"* returned) unnamed_addr #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc(%"class.std::__1::basic_string"* returned %this, i8* %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__s.addr = alloca i8*, align 8
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2)
  %0 = load i8*, i8** %__s.addr, align 8
  %1 = load i8*, i8** %__s.addr, align 8
  %call3 = call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %1) #12
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* %this1, i8* %0, i64 %call3)
  call void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %this1)
  ret %"class.std::__1::basic_string"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %this1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %0, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1)
  ret %"class.std::__1::__compressed_pair"* %this1
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %__s) #6 align 2 {
entry:
  %__s.addr = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %call = call i64 @strlen(i8* %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %__c) #6 {
entry:
  %__c.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %__c, %"class.std::__1::basic_string"** %__c.addr, align 8
  ret void
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* returned %this, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t1, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  %__t1.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %__t2.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t1, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  store %"struct.std::__1::__default_init_tag"* %__t2, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %1 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t1.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %1) #12
  %call2 = call %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* %0)
  %2 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem.0"*
  %3 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t2.addr, align 8
  %call4 = call nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %3) #12
  %call5 = call %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* %2)
  ret %"class.std::__1::__compressed_pair"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 1 dereferenceable(1) %"struct.std::__1::__default_init_tag"* @_ZNSt3__17forwardB6v15006INS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE(%"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %__t) #6 {
entry:
  %__t.addr = alloca %"struct.std::__1::__default_init_tag"*, align 8
  store %"struct.std::__1::__default_init_tag"* %__t, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  %0 = load %"struct.std::__1::__default_init_tag"*, %"struct.std::__1::__default_init_tag"** %__t.addr, align 8
  ret %"struct.std::__1::__default_init_tag"* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem"* @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem"* returned %this) unnamed_addr #6 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::__compressed_pair_elem"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__compressed_pair_elem.0"* @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE(%"struct.std::__1::__compressed_pair_elem.0"* returned %this) unnamed_addr #6 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem.0"*, align 8
  store %"struct.std::__1::__compressed_pair_elem.0"* %this, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem.0"*, %"struct.std::__1::__compressed_pair_elem.0"** %this.addr, align 8
  %1 = bitcast %"struct.std::__1::__compressed_pair_elem.0"* %this1 to %"class.std::__1::allocator"*
  %call = call %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* %1) #12
  ret %"struct.std::__1::__compressed_pair_elem.0"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::allocator"* @_ZNSt3__19allocatorIcEC2B6v15006Ev(%"class.std::__1::allocator"* returned %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::allocator"*, align 8
  store %"class.std::__1::allocator"* %this, %"class.std::__1::allocator"** %this.addr, align 8
  %this1 = load %"class.std::__1::allocator"*, %"class.std::__1::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::allocator"* %this1 to %"struct.std::__1::__non_trivial_if"*
  %call = call %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* %0) #12
  ret %"class.std::__1::allocator"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"struct.std::__1::__non_trivial_if"* @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev(%"struct.std::__1::__non_trivial_if"* returned %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__non_trivial_if"*, align 8
  store %"struct.std::__1::__non_trivial_if"* %this, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__non_trivial_if"*, %"struct.std::__1::__non_trivial_if"** %this.addr, align 8
  ret %"struct.std::__1::__non_trivial_if"* %this1
}

; Function Attrs: nounwind
declare i64 @strlen(i8*) #7

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::mersenne_twister_engine"* @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2B6v15006Ej(%"class.std::__1::mersenne_twister_engine"* returned %this, i32 %__sd) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__sd.addr = alloca i32, align 4
  store %"class.std::__1::mersenne_twister_engine"* %this, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  store i32 %__sd, i32* %__sd.addr, align 4
  %this1 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  %0 = load i32, i32* %__sd.addr, align 4
  call void @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj(%"class.std::__1::mersenne_twister_engine"* %this1, i32 %0)
  ret %"class.std::__1::mersenne_twister_engine"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj(%"class.std::__1::mersenne_twister_engine"* %this, i32 %__sd) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__sd.addr = alloca i32, align 4
  %__i = alloca i64, align 8
  store %"class.std::__1::mersenne_twister_engine"* %this, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  store i32 %__sd, i32* %__sd.addr, align 4
  %this1 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  %0 = load i32, i32* %__sd.addr, align 4
  %__x_ = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [624 x i32], [624 x i32]* %__x_, i64 0, i64 0
  store i32 %0, i32* %arrayidx, align 8
  store i64 1, i64* %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %__i, align 8
  %cmp = icmp ult i64 %1, 624
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %__x_2 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %2 = load i64, i64* %__i, align 8
  %sub = sub i64 %2, 1
  %arrayidx3 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_2, i64 0, i64 %sub
  %3 = load i32, i32* %arrayidx3, align 4
  %__x_4 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %4 = load i64, i64* %__i, align 8
  %sub5 = sub i64 %4, 1
  %arrayidx6 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_4, i64 0, i64 %sub5
  %5 = load i32, i32* %arrayidx6, align 4
  %call = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %5)
  %xor = xor i32 %3, %call
  %mul = mul i32 1812433253, %xor
  %conv = zext i32 %mul to i64
  %6 = load i64, i64* %__i, align 8
  %add = add i64 %conv, %6
  %and = and i64 %add, 4294967295
  %conv7 = trunc i64 %and to i32
  %__x_8 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %7 = load i64, i64* %__i, align 8
  %arrayidx9 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_8, i64 0, i64 %7
  store i32 %conv7, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %__i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %__i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %__i_ = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  store i64 0, i64* %__i_, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shr = lshr i32 %0, 30
  ret i32 %shr
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::uniform_int_distribution"* @_ZNSt3__124uniform_int_distributionIiEC2Eii(%"class.std::__1::uniform_int_distribution"* returned %this, i32 %__a, i32 %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution"*, align 8
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store %"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %this1 = load %"class.std::__1::uniform_int_distribution"*, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  %__p_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution", %"class.std::__1::uniform_int_distribution"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %call = call %"class.std::__1::uniform_int_distribution<>::param_type"* @_ZNSt3__124uniform_int_distributionIiE10param_typeC1Eii(%"class.std::__1::uniform_int_distribution<>::param_type"* %__p_, i32 %0, i32 %1)
  ret %"class.std::__1::uniform_int_distribution"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::uniform_int_distribution<>::param_type"* @_ZNSt3__124uniform_int_distributionIiE10param_typeC1Eii(%"class.std::__1::uniform_int_distribution<>::param_type"* returned %this, i32 %__a, i32 %__b) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution<>::param_type"*, align 8
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store %"class.std::__1::uniform_int_distribution<>::param_type"* %this, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %this1 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %call = call %"class.std::__1::uniform_int_distribution<>::param_type"* @_ZNSt3__124uniform_int_distributionIiE10param_typeC2Eii(%"class.std::__1::uniform_int_distribution<>::param_type"* %this1, i32 %0, i32 %1)
  ret %"class.std::__1::uniform_int_distribution<>::param_type"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr %"class.std::__1::uniform_int_distribution<>::param_type"* @_ZNSt3__124uniform_int_distributionIiE10param_typeC2Eii(%"class.std::__1::uniform_int_distribution<>::param_type"* returned %this, i32 %__a, i32 %__b) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution<>::param_type"*, align 8
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store %"class.std::__1::uniform_int_distribution<>::param_type"* %this, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %this1 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %__a_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution<>::param_type", %"class.std::__1::uniform_int_distribution<>::param_type"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__a.addr, align 4
  store i32 %0, i32* %__a_, align 4
  %__b_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution<>::param_type", %"class.std::__1::uniform_int_distribution<>::param_type"* %this1, i32 0, i32 1
  %1 = load i32, i32* %__b.addr, align 4
  store i32 %1, i32* %__b_, align 4
  ret %"class.std::__1::uniform_int_distribution<>::param_type"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE(%"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %__g, %"class.std::__1::uniform_int_distribution<>::param_type"* nonnull align 4 dereferenceable(8) %__p) #0 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %"class.std::__1::uniform_int_distribution"*, align 8
  %__g.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__p.addr = alloca %"class.std::__1::uniform_int_distribution<>::param_type"*, align 8
  %_Rp = alloca i32, align 4
  %_Dt = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__1::__independent_bits_engine", align 8
  %__w = alloca i64, align 8
  %__e = alloca %"class.std::__1::__independent_bits_engine", align 8
  %__u = alloca i32, align 4
  store %"class.std::__1::uniform_int_distribution"* %this, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  store %"class.std::__1::mersenne_twister_engine"* %__g, %"class.std::__1::mersenne_twister_engine"** %__g.addr, align 8
  store %"class.std::__1::uniform_int_distribution<>::param_type"* %__p, %"class.std::__1::uniform_int_distribution<>::param_type"** %__p.addr, align 8
  %this1 = load %"class.std::__1::uniform_int_distribution"*, %"class.std::__1::uniform_int_distribution"** %this.addr, align 8
  %0 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %__p.addr, align 8
  %call = call i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1bEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %0)
  %1 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %__p.addr, align 8
  %call2 = call i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1aEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %1)
  %sub = sub i32 %call, %call2
  %add = add i32 %sub, 1
  store i32 %add, i32* %_Rp, align 4
  %2 = load i32, i32* %_Rp, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %__p.addr, align 8
  %call3 = call i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1aEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %3)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 32, i64* %_Dt, align 8
  %4 = load i32, i32* %_Rp, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %5 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__g.addr, align 8
  %call6 = call %"class.std::__1::__independent_bits_engine"* @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m(%"class.std::__1::__independent_bits_engine"* %ref.tmp, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %5, i64 32)
  %call7 = call i32 @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclEv(%"class.std::__1::__independent_bits_engine"* %ref.tmp)
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %6 = load i32, i32* %_Rp, align 4
  %call9 = call i32 @_ZNSt3__113__countl_zeroB6v15006IjEEiT_(i32 %6) #12
  %conv = sext i32 %call9 to i64
  %sub10 = sub i64 32, %conv
  %sub11 = sub i64 %sub10, 1
  store i64 %sub11, i64* %__w, align 8
  %7 = load i32, i32* %_Rp, align 4
  %call12 = call i32 @_ZNSt3__114numeric_limitsIjE3maxB6v15006Ev() #12
  %8 = load i64, i64* %__w, align 8
  %sub13 = sub i64 32, %8
  %sh_prom = trunc i64 %sub13 to i32
  %shr = lshr i32 %call12, %sh_prom
  %and = and i32 %7, %shr
  %cmp14 = icmp ne i32 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  %9 = load i64, i64* %__w, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %__w, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end8
  %10 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__g.addr, align 8
  %11 = load i64, i64* %__w, align 8
  %call17 = call %"class.std::__1::__independent_bits_engine"* @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m(%"class.std::__1::__independent_bits_engine"* %__e, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %10, i64 %11)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end16
  %call18 = call i32 @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclEv(%"class.std::__1::__independent_bits_engine"* %__e)
  store i32 %call18, i32* %__u, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i32, i32* %__u, align 4
  %13 = load i32, i32* %_Rp, align 4
  %cmp19 = icmp uge i32 %12, %13
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %__u, align 4
  %15 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %__p.addr, align 8
  %call20 = call i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1aEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %15)
  %add21 = add i32 %14, %call20
  store i32 %add21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1bEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution<>::param_type"*, align 8
  store %"class.std::__1::uniform_int_distribution<>::param_type"* %this, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %this1 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %__b_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution<>::param_type", %"class.std::__1::uniform_int_distribution<>::param_type"* %this1, i32 0, i32 1
  %0 = load i32, i32* %__b_, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNKSt3__124uniform_int_distributionIiE10param_type1aEv(%"class.std::__1::uniform_int_distribution<>::param_type"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::uniform_int_distribution<>::param_type"*, align 8
  store %"class.std::__1::uniform_int_distribution<>::param_type"* %this, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %this1 = load %"class.std::__1::uniform_int_distribution<>::param_type"*, %"class.std::__1::uniform_int_distribution<>::param_type"** %this.addr, align 8
  %__a_ = getelementptr inbounds %"class.std::__1::uniform_int_distribution<>::param_type", %"class.std::__1::uniform_int_distribution<>::param_type"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__a_, align 4
  ret i32 %0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr %"class.std::__1::__independent_bits_engine"* @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC1ERS2_m(%"class.std::__1::__independent_bits_engine"* returned %this, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %__e, i64 %__w) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__independent_bits_engine"*, align 8
  %__e.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__w.addr = alloca i64, align 8
  store %"class.std::__1::__independent_bits_engine"* %this, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  store %"class.std::__1::mersenne_twister_engine"* %__e, %"class.std::__1::mersenne_twister_engine"** %__e.addr, align 8
  store i64 %__w, i64* %__w.addr, align 8
  %this1 = load %"class.std::__1::__independent_bits_engine"*, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  %0 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__e.addr, align 8
  %1 = load i64, i64* %__w.addr, align 8
  %call = call %"class.std::__1::__independent_bits_engine"* @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m(%"class.std::__1::__independent_bits_engine"* %this1, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %0, i64 %1)
  ret %"class.std::__1::__independent_bits_engine"* %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEclEv(%"class.std::__1::__independent_bits_engine"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__independent_bits_engine"*, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store %"class.std::__1::__independent_bits_engine"* %this, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  %this1 = load %"class.std::__1::__independent_bits_engine"*, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  %call = call i32 @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE(%"class.std::__1::__independent_bits_engine"* %this1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNSt3__113__countl_zeroB6v15006IjEEiT_(i32 %__t) #6 {
entry:
  %retval = alloca i32, align 4
  %__t.addr = alloca i32, align 4
  store i32 %__t, i32* %__t.addr, align 4
  %0 = load i32, i32* %__t.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %__t.addr, align 4
  %call = call i32 @_ZNSt3__112__libcpp_clzB6v15006Ej(i32 %1) #12
  %sub = sub nsw i32 %call, 0
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNSt3__114numeric_limitsIjE3maxB6v15006Ev() #6 align 2 {
entry:
  %call = call i32 @_ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB6v15006Ev() #12
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr %"class.std::__1::__independent_bits_engine"* @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjEC2ERS2_m(%"class.std::__1::__independent_bits_engine"* returned %this, %"class.std::__1::mersenne_twister_engine"* nonnull align 8 dereferenceable(2504) %__e, i64 %__w) unnamed_addr #6 align 2 {
entry:
  %retval = alloca %"class.std::__1::__independent_bits_engine"*, align 8
  %this.addr = alloca %"class.std::__1::__independent_bits_engine"*, align 8
  %__e.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__w.addr = alloca i64, align 8
  store %"class.std::__1::__independent_bits_engine"* %this, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  store %"class.std::__1::mersenne_twister_engine"* %__e, %"class.std::__1::mersenne_twister_engine"** %__e.addr, align 8
  store i64 %__w, i64* %__w.addr, align 8
  %this1 = load %"class.std::__1::__independent_bits_engine"*, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  store %"class.std::__1::__independent_bits_engine"* %this1, %"class.std::__1::__independent_bits_engine"** %retval, align 8
  %__e_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__e.addr, align 8
  store %"class.std::__1::mersenne_twister_engine"* %0, %"class.std::__1::mersenne_twister_engine"** %__e_, align 8
  %__w_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %1 = load i64, i64* %__w.addr, align 8
  store i64 %1, i64* %__w_, align 8
  %__w_2 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %2 = load i64, i64* %__w_2, align 8
  %div = udiv i64 %2, 32
  %__w_3 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %3 = load i64, i64* %__w_3, align 8
  %rem = urem i64 %3, 32
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  %__n_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  store i64 %add, i64* %__n_, align 8
  %__w_4 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %4 = load i64, i64* %__w_4, align 8
  %__n_5 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %5 = load i64, i64* %__n_5, align 8
  %div6 = udiv i64 %4, %5
  %__w0_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  store i64 %div6, i64* %__w0_, align 8
  %__y0_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 5
  store i32 0, i32* %__y0_, align 8
  %__y0_7 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 5
  %6 = load i32, i32* %__y0_7, align 8
  %sub = sub i32 0, %6
  %conv8 = zext i32 %sub to i64
  %__y0_9 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 5
  %7 = load i32, i32* %__y0_9, align 8
  %conv10 = zext i32 %7 to i64
  %__n_11 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %8 = load i64, i64* %__n_11, align 8
  %div12 = udiv i64 %conv10, %8
  %cmp13 = icmp ugt i64 %conv8, %div12
  br i1 %cmp13, label %if.then, label %if.end27

if.then:                                          ; preds = %entry
  %__n_14 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %9 = load i64, i64* %__n_14, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %__n_14, align 8
  %__w_15 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %10 = load i64, i64* %__w_15, align 8
  %__n_16 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %11 = load i64, i64* %__n_16, align 8
  %div17 = udiv i64 %10, %11
  %__w0_18 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  store i64 %div17, i64* %__w0_18, align 8
  %__w0_19 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %12 = load i64, i64* %__w0_19, align 8
  %cmp20 = icmp ult i64 %12, 32
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then
  %__w0_22 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %13 = load i64, i64* %__w0_22, align 8
  %sh_prom = trunc i64 %13 to i32
  %shr = lshr i32 0, %sh_prom
  %__w0_23 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %14 = load i64, i64* %__w0_23, align 8
  %sh_prom24 = trunc i64 %14 to i32
  %shl = shl i32 %shr, %sh_prom24
  %__y0_25 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 5
  store i32 %shl, i32* %__y0_25, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__y0_26 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 5
  store i32 0, i32* %__y0_26, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end, %entry
  %__n_28 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %15 = load i64, i64* %__n_28, align 8
  %__w_29 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 1
  %16 = load i64, i64* %__w_29, align 8
  %__n_30 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 3
  %17 = load i64, i64* %__n_30, align 8
  %rem31 = urem i64 %16, %17
  %sub32 = sub i64 %15, %rem31
  %__n0_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 4
  store i64 %sub32, i64* %__n0_, align 8
  %__w0_33 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %18 = load i64, i64* %__w0_33, align 8
  %cmp34 = icmp ult i64 %18, 31
  br i1 %cmp34, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.end27
  %__w0_36 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %19 = load i64, i64* %__w0_36, align 8
  %add37 = add i64 %19, 1
  %sh_prom38 = trunc i64 %add37 to i32
  %shr39 = lshr i32 0, %sh_prom38
  %__w0_40 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %20 = load i64, i64* %__w0_40, align 8
  %add41 = add i64 %20, 1
  %sh_prom42 = trunc i64 %add41 to i32
  %shl43 = shl i32 %shr39, %sh_prom42
  %__y1_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 6
  store i32 %shl43, i32* %__y1_, align 4
  br label %if.end46

if.else44:                                        ; preds = %if.end27
  %__y1_45 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 6
  store i32 0, i32* %__y1_45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then35
  %__w0_47 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %21 = load i64, i64* %__w0_47, align 8
  %cmp48 = icmp ugt i64 %21, 0
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end46
  %__w0_49 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %22 = load i64, i64* %__w0_49, align 8
  %sub50 = sub i64 32, %22
  %sh_prom51 = trunc i64 %sub50 to i32
  %shr52 = lshr i32 -1, %sh_prom51
  br label %cond.end

cond.false:                                       ; preds = %if.end46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr52, %cond.true ], [ 0, %cond.false ]
  %__mask0_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 7
  store i32 %cond, i32* %__mask0_, align 8
  %__w0_53 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %23 = load i64, i64* %__w0_53, align 8
  %cmp54 = icmp ult i64 %23, 31
  br i1 %cmp54, label %cond.true55, label %cond.false61

cond.true55:                                      ; preds = %cond.end
  %__w0_56 = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 2
  %24 = load i64, i64* %__w0_56, align 8
  %add57 = add i64 %24, 1
  %sub58 = sub i64 32, %add57
  %sh_prom59 = trunc i64 %sub58 to i32
  %shr60 = lshr i32 -1, %sh_prom59
  br label %cond.end62

cond.false61:                                     ; preds = %cond.end
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true55
  %cond63 = phi i32 [ %shr60, %cond.true55 ], [ -1, %cond.false61 ]
  %__mask1_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 8
  store i32 %cond63, i32* %__mask1_, align 4
  %25 = load %"class.std::__1::__independent_bits_engine"*, %"class.std::__1::__independent_bits_engine"** %retval, align 8
  ret %"class.std::__1::__independent_bits_engine"* %25
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE(%"class.std::__1::__independent_bits_engine"* %this) #0 align 2 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant", align 1
  %this.addr = alloca %"class.std::__1::__independent_bits_engine"*, align 8
  store %"class.std::__1::__independent_bits_engine"* %this, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  %this1 = load %"class.std::__1::__independent_bits_engine"*, %"class.std::__1::__independent_bits_engine"** %this.addr, align 8
  %__e_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %__e_, align 8
  %call = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv(%"class.std::__1::mersenne_twister_engine"* %1)
  %__mask0_ = getelementptr inbounds %"class.std::__1::__independent_bits_engine", %"class.std::__1::__independent_bits_engine"* %this1, i32 0, i32 7
  %2 = load i32, i32* %__mask0_, align 8
  %and = and i32 %call, %2
  ret i32 %and
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv(%"class.std::__1::mersenne_twister_engine"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::mersenne_twister_engine"*, align 8
  %__j = alloca i64, align 8
  %__mask = alloca i32, align 4
  %_Yp = alloca i32, align 4
  %__k = alloca i64, align 8
  %__z = alloca i32, align 4
  store %"class.std::__1::mersenne_twister_engine"* %this, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  %this1 = load %"class.std::__1::mersenne_twister_engine"*, %"class.std::__1::mersenne_twister_engine"** %this.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %0 = load i64, i64* %__i_, align 8
  %add = add i64 %0, 1
  %rem = urem i64 %add, 624
  store i64 %rem, i64* %__j, align 8
  store i32 2147483647, i32* %__mask, align 4
  %__x_ = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %__i_2 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %1 = load i64, i64* %__i_2, align 8
  %arrayidx = getelementptr inbounds [624 x i32], [624 x i32]* %__x_, i64 0, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %and = and i32 %2, -2147483648
  %__x_3 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %3 = load i64, i64* %__j, align 8
  %arrayidx4 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_3, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %4, 2147483647
  %or = or i32 %and, %and5
  store i32 %or, i32* %_Yp, align 4
  %__i_6 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %5 = load i64, i64* %__i_6, align 8
  %add7 = add i64 %5, 397
  %rem8 = urem i64 %add7, 624
  store i64 %rem8, i64* %__k, align 8
  %__x_9 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %6 = load i64, i64* %__k, align 8
  %arrayidx10 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_9, i64 0, i64 %6
  %7 = load i32, i32* %arrayidx10, align 4
  %8 = load i32, i32* %_Yp, align 4
  %call = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %8)
  %xor = xor i32 %7, %call
  %9 = load i32, i32* %_Yp, align 4
  %and11 = and i32 %9, 1
  %mul = mul i32 -1727483681, %and11
  %xor12 = xor i32 %xor, %mul
  %__x_13 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %__i_14 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %10 = load i64, i64* %__i_14, align 8
  %arrayidx15 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_13, i64 0, i64 %10
  store i32 %xor12, i32* %arrayidx15, align 4
  %__x_16 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %__i_17 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %11 = load i64, i64* %__i_17, align 8
  %arrayidx18 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_16, i64 0, i64 %11
  %12 = load i32, i32* %arrayidx18, align 4
  %__x_19 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 0
  %__i_20 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  %13 = load i64, i64* %__i_20, align 8
  %arrayidx21 = getelementptr inbounds [624 x i32], [624 x i32]* %__x_19, i64 0, i64 %13
  %14 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %14)
  %xor23 = xor i32 %12, %call22
  store i32 %xor23, i32* %__z, align 4
  %15 = load i64, i64* %__j, align 8
  %__i_24 = getelementptr inbounds %"class.std::__1::mersenne_twister_engine", %"class.std::__1::mersenne_twister_engine"* %this1, i32 0, i32 1
  store i64 %15, i64* %__i_24, align 8
  %16 = load i32, i32* %__z, align 4
  %call25 = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB6v15006ILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj(i32 %16)
  %and26 = and i32 %call25, -1658038656
  %17 = load i32, i32* %__z, align 4
  %xor27 = xor i32 %17, %and26
  store i32 %xor27, i32* %__z, align 4
  %18 = load i32, i32* %__z, align 4
  %call28 = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB6v15006ILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj(i32 %18)
  %and29 = and i32 %call28, -272236544
  %19 = load i32, i32* %__z, align 4
  %xor30 = xor i32 %19, %and29
  store i32 %xor30, i32* %__z, align 4
  %20 = load i32, i32* %__z, align 4
  %21 = load i32, i32* %__z, align 4
  %call31 = call i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %21)
  %xor32 = xor i32 %20, %call31
  ret i32 %xor32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shr = lshr i32 %0, 1
  ret i32 %shr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shr = lshr i32 %0, 11
  ret i32 %shr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB6v15006ILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shl = shl i32 %0, 7
  ret i32 %shl
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftB6v15006ILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shl = shl i32 %0, 15
  ret i32 %shl
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftB6v15006ILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj(i32 %__x) #6 align 2 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %shr = lshr i32 %0, 18
  ret i32 %shr
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNSt3__112__libcpp_clzB6v15006Ej(i32 %__x) #6 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 false)
  ret i32 %1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNSt3__123__libcpp_numeric_limitsIjLb1EE3maxB6v15006Ev() #6 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr nonnull align 8 dereferenceable(8) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i8* %__str, i64 %__len) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__os.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %__str.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  %__s = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::ostreambuf_iterator", align 8
  store %"class.std::__1::basic_ostream"* %__os, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  store i8* %__str, i8** %__str.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %call = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* %__s, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call3, label %if.then, label %if.end29

if.then:                                          ; preds = %invoke.cont2
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %call4 = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %agg.tmp, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %1) #12
  %2 = load i8*, i8** %__str.addr, align 8
  %3 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %3 to i8**
  %vtable = load i8*, i8** %4, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %5 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %5, align 8
  %6 = bitcast %"class.std::__1::basic_ostream"* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %vbase.offset
  %7 = bitcast i8* %add.ptr to %"class.std::__1::ios_base"*
  %call6 = invoke i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %7)
          to label %invoke.cont5 unwind label %lpad1

invoke.cont5:                                     ; preds = %if.then
  %and = and i32 %call6, 176
  %cmp = icmp eq i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont5
  %8 = load i8*, i8** %__str.addr, align 8
  %9 = load i64, i64* %__len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont5
  %10 = load i8*, i8** %__str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr7, %cond.true ], [ %10, %cond.false ]
  %11 = load i8*, i8** %__str.addr, align 8
  %12 = load i64, i64* %__len.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %14 = bitcast %"class.std::__1::basic_ostream"* %13 to i8**
  %vtable9 = load i8*, i8** %14, align 8
  %vbase.offset.ptr10 = getelementptr i8, i8* %vtable9, i64 -24
  %15 = bitcast i8* %vbase.offset.ptr10 to i64*
  %vbase.offset11 = load i64, i64* %15, align 8
  %16 = bitcast %"class.std::__1::basic_ostream"* %13 to i8*
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %vbase.offset11
  %17 = bitcast i8* %add.ptr12 to %"class.std::__1::ios_base"*
  %18 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %19 = bitcast %"class.std::__1::basic_ostream"* %18 to i8**
  %vtable13 = load i8*, i8** %19, align 8
  %vbase.offset.ptr14 = getelementptr i8, i8* %vtable13, i64 -24
  %20 = bitcast i8* %vbase.offset.ptr14 to i64*
  %vbase.offset15 = load i64, i64* %20, align 8
  %21 = bitcast %"class.std::__1::basic_ostream"* %18 to i8*
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %vbase.offset15
  %22 = bitcast i8* %add.ptr16 to %"class.std::__1::basic_ios"*
  %call18 = invoke signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %22)
          to label %invoke.cont17 unwind label %lpad1

invoke.cont17:                                    ; preds = %cond.end
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %agg.tmp, i32 0, i32 0
  %23 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %23 to i64
  %call20 = invoke i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %coerce.val.pi, i8* %2, i8* %cond, i8* %add.ptr8, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %17, i8 signext %call18)
          to label %invoke.cont19 unwind label %lpad1

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.dive21 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %ref.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call20 to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive21, align 8
  %call22 = call zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %ref.tmp) #12
  br i1 %call22, label %if.then23, label %if.end

if.then23:                                        ; preds = %invoke.cont19
  %24 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %25 = bitcast %"class.std::__1::basic_ostream"* %24 to i8**
  %vtable24 = load i8*, i8** %25, align 8
  %vbase.offset.ptr25 = getelementptr i8, i8* %vtable24, i64 -24
  %26 = bitcast i8* %vbase.offset.ptr25 to i64*
  %vbase.offset26 = load i64, i64* %26, align 8
  %27 = bitcast %"class.std::__1::basic_ostream"* %24 to i8*
  %add.ptr27 = getelementptr inbounds i8, i8* %27, i64 %vbase.offset26
  %28 = bitcast i8* %add.ptr27 to %"class.std::__1::basic_ios"*
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %28, i32 5)
          to label %invoke.cont28 unwind label %lpad1

invoke.cont28:                                    ; preds = %if.then23
  br label %if.end

lpad:                                             ; preds = %if.end29, %entry
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot, align 4
  br label %catch

lpad1:                                            ; preds = %if.then23, %invoke.cont17, %cond.end, %if.then, %invoke.cont
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  %call33 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont32 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont28, %invoke.cont19
  br label %if.end29

if.end29:                                         ; preds = %if.end, %invoke.cont2
  %call31 = invoke %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* %__s)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %if.end29
  br label %try.cont

invoke.cont32:                                    ; preds = %lpad1
  br label %catch

catch:                                            ; preds = %invoke.cont32, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %35 = call i8* @__cxa_begin_catch(i8* %exn) #12
  %36 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  %37 = bitcast %"class.std::__1::basic_ostream"* %36 to i8**
  %vtable34 = load i8*, i8** %37, align 8
  %vbase.offset.ptr35 = getelementptr i8, i8* %vtable34, i64 -24
  %38 = bitcast i8* %vbase.offset.ptr35 to i64*
  %vbase.offset36 = load i64, i64* %38, align 8
  %39 = bitcast %"class.std::__1::basic_ostream"* %36 to i8*
  %add.ptr37 = getelementptr inbounds i8, i8* %39, i64 %vbase.offset36
  %40 = bitcast i8* %add.ptr37 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %40)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %catch
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont39, %invoke.cont30
  %41 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__os.addr, align 8
  ret %"class.std::__1::basic_ostream"* %41

lpad38:                                           ; preds = %catch
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont40 unwind label %terminate.lpad

invoke.cont40:                                    ; preds = %lpad38
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont40
  %exn41 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn41, 0
  %lpad.val42 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val42

terminate.lpad:                                   ; preds = %lpad38, %lpad1
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #11
  unreachable
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char>::sentry"* returned, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev(%"class.std::__1::basic_ostream<char>::sentry"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ostream<char>::sentry"*, align 8
  store %"class.std::__1::basic_ostream<char>::sentry"* %this, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ostream<char>::sentry"*, %"class.std::__1::basic_ostream<char>::sentry"** %this.addr, align 8
  %__ok_ = getelementptr inbounds %"class.std::__1::basic_ostream<char>::sentry", %"class.std::__1::basic_ostream<char>::sentry"* %this1, i32 0, i32 0
  %0 = load i8, i8* %__ok_, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %__s.coerce, i8* %__ob, i8* %__op, i8* %__oe, %"class.std::__1::ios_base"* nonnull align 8 dereferenceable(136) %__iob, i8 signext %__fl) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__s = alloca %"class.std::__1::ostreambuf_iterator", align 8
  %__ob.addr = alloca i8*, align 8
  %__op.addr = alloca i8*, align 8
  %__oe.addr = alloca i8*, align 8
  %__iob.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__fl.addr = alloca i8, align 1
  %__sz = alloca i64, align 8
  %__ns = alloca i64, align 8
  %__np = alloca i64, align 8
  %__sp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__s.coerce to %"class.std::__1::basic_streambuf"*
  store %"class.std::__1::basic_streambuf"* %coerce.val.ip, %"class.std::__1::basic_streambuf"** %coerce.dive, align 8
  store i8* %__ob, i8** %__ob.addr, align 8
  store i8* %__op, i8** %__op.addr, align 8
  store i8* %__oe, i8** %__oe.addr, align 8
  store %"class.std::__1::ios_base"* %__iob, %"class.std::__1::ios_base"** %__iob.addr, align 8
  store i8 %__fl, i8* %__fl.addr, align 1
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %2 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %__oe.addr, align 8
  %4 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %__sz, align 8
  %5 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call = call i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %5)
  store i64 %call, i64* %__ns, align 8
  %6 = load i64, i64* %__ns, align 8
  %7 = load i64, i64* %__sz, align 8
  %cmp1 = icmp sgt i64 %6, %7
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %8 = load i64, i64* %__sz, align 8
  %9 = load i64, i64* %__ns, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %__ns, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 0, i64* %__ns, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %10 = load i8*, i8** %__op.addr, align 8
  %11 = load i8*, i8** %__ob.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  store i64 %sub.ptr.sub6, i64* %__np, align 8
  %12 = load i64, i64* %__np, align 8
  %cmp7 = icmp sgt i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %__sbuf_9 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %13 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_9, align 8
  %14 = load i8*, i8** %__ob.addr, align 8
  %15 = load i64, i64* %__np, align 8
  %call10 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %13, i8* %14, i64 %15)
  %16 = load i64, i64* %__np, align 8
  %cmp11 = icmp ne i64 %call10, %16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then8
  %__sbuf_13 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_13, align 8
  %17 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %18 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  br label %return

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %19 = load i64, i64* %__ns, align 8
  %cmp16 = icmp sgt i64 %19, 0
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end15
  %20 = load i64, i64* %__ns, align 8
  %21 = load i8, i8* %__fl.addr, align 1
  %call18 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* %__sp, i64 %20, i8 signext %21)
  %__sbuf_19 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %22 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_19, align 8
  %call20 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %__sp) #12
  %23 = load i64, i64* %__ns, align 8
  %call21 = invoke i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %22, i8* %call20, i64 %23)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then17
  %24 = load i64, i64* %__ns, align 8
  %cmp22 = icmp ne i64 %call21, %24
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %invoke.cont
  %__sbuf_24 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_24, align 8
  %25 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %26 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.then17
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %exn.slot, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %ehselector.slot, align 4
  %call28 = invoke %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
          to label %invoke.cont27 unwind label %terminate.lpad

if.end25:                                         ; preds = %invoke.cont
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then23
  %call26 = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* %__sp)
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29

invoke.cont27:                                    ; preds = %lpad
  br label %eh.resume

if.end29:                                         ; preds = %cleanup.cont, %if.end15
  %30 = load i8*, i8** %__oe.addr, align 8
  %31 = load i8*, i8** %__op.addr, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %31 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  store i64 %sub.ptr.sub32, i64* %__np, align 8
  %32 = load i64, i64* %__np, align 8
  %cmp33 = icmp sgt i64 %32, 0
  br i1 %cmp33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end29
  %__sbuf_35 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  %33 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_35, align 8
  %34 = load i8*, i8** %__op.addr, align 8
  %35 = load i64, i64* %__np, align 8
  %call36 = call i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %33, i8* %34, i64 %35)
  %36 = load i64, i64* %__np, align 8
  %cmp37 = icmp ne i64 %call36, %36
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %__sbuf_39 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %__s, i32 0, i32 0
  store %"class.std::__1::basic_streambuf"* null, %"class.std::__1::basic_streambuf"** %__sbuf_39, align 8
  %37 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %38 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  br label %return

if.end40:                                         ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end29
  %39 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %__iob.addr, align 8
  %call42 = call i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %39, i64 0)
  %40 = bitcast %"class.std::__1::ostreambuf_iterator"* %retval to i8*
  %41 = bitcast %"class.std::__1::ostreambuf_iterator"* %__s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  br label %return

return:                                           ; preds = %if.end41, %if.then38, %cleanup, %if.then12, %if.then
  %coerce.dive43 = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %retval, i32 0, i32 0
  %42 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %coerce.dive43, align 8
  %coerce.val.pi = ptrtoint %"class.std::__1::basic_streambuf"* %42 to i64
  ret i64 %coerce.val.pi

eh.resume:                                        ; preds = %invoke.cont27
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val44 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val44

terminate.lpad:                                   ; preds = %lpad
  %43 = landingpad { i8*, i32 }
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  call void @__clang_call_terminate(i8* %44) #11
  unreachable

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %call = call %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* %this1, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %0) #12
  ret %"class.std::__1::ostreambuf_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i32 @_ZNKSt3__18ios_base5flagsB6v15006Ev(%"class.std::__1::ios_base"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__fmtflags_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 1
  %0 = load i32, i32* %__fmtflags_, align 8
  ret i32 %0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev(%"class.std::__1::basic_ios"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %call = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #12
  %__fill_ = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %0 = load i32, i32* %__fill_, align 8
  %call2 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %call, i32 %0) #12
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this1, i8 signext 32)
  %conv = sext i8 %call3 to i32
  %__fill_4 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  store i32 %conv, i32* %__fill_4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__fill_5 = getelementptr inbounds %"class.std::__1::basic_ios", %"class.std::__1::basic_ios"* %this1, i32 0, i32 2
  %1 = load i32, i32* %__fill_5, align 8
  %conv6 = trunc i32 %1 to i8
  ret i8 %conv6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev(%"class.std::__1::ostreambuf_iterator"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  %cmp = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  ret i1 %cmp
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej(%"class.std::__1::basic_ios"* %this, i32 %__state) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %1 = load i32, i32* %__state.addr, align 4
  call void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %0, i32 %1)
  ret void
}

declare %"class.std::__1::basic_ostream<char>::sentry"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char>::sentry"* returned) unnamed_addr #1

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) #1

declare void @__cxa_end_catch()

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__18ios_base5widthB6v15006Ev(%"class.std::__1::ios_base"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl(%"class.std::__1::basic_streambuf"* %this, i8* %__s, i64 %__n) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_streambuf"*, align 8
  %__s.addr = alloca i8*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::__1::basic_streambuf"* %this, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %this.addr, align 8
  %0 = load i8*, i8** %__s.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = bitcast %"class.std::__1::basic_streambuf"* %this1 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %vtable = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %2, align 8
  %vfn = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vtable, i64 12
  %3 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %vfn, align 8
  %call = call i64 %3(%"class.std::__1::basic_streambuf"* %this1, i8* %0, i64 %1)
  ret i64 %call
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i8, i8* %__c.addr, align 1
  %call = call %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1)
  ret %"class.std::__1::basic_string"* %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev(%"class.std::__1::basic_string"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #12
  %call2 = call i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %call) #12
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__18ios_base5widthB6v15006El(%"class.std::__1::ios_base"* %this, i64 %__wide) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__wide.addr = alloca i64, align 8
  %__r = alloca i64, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i64 %__wide, i64* %__wide.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__width_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  %0 = load i64, i64* %__width_, align 8
  store i64 %0, i64* %__r, align 8
  %1 = load i64, i64* %__wide.addr, align 8
  %__width_2 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 3
  store i64 %1, i64* %__width_2, align 8
  %2 = load i64, i64* %__r, align 8
  ret i64 %2
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc(%"class.std::__1::basic_string"* returned %this, i64 %__n, i8 signext %__c) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  %__n.addr = alloca i64, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call %"class.std::__1::__compressed_pair"* @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_(%"class.std::__1::__compressed_pair"* %__r_, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp, %"struct.std::__1::__default_init_tag"* nonnull align 1 dereferenceable(1) %ref.tmp2)
  %0 = load i64, i64* %__n.addr, align 8
  %1 = load i8, i8* %__c.addr, align 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* %this1, i64 %0, i8 signext %1)
  call void @_ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(%"class.std::__1::basic_string"* %this1)
  ret %"class.std::__1::basic_string"* %this1
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__112__to_addressB6v15006IKcEEPT_S3_(i8* %__p) #6 {
entry:
  %__p.addr = alloca i8*, align 8
  store i8* %__p, i8** %__p.addr, align 8
  %0 = load i8*, i8** %__p.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this1) #12
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev(%"class.std::__1::basic_string"* %this) #6 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %call = call zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call2 = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #12
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call2, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 2
  %bf.load = load i8, i8* %__is_long_, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %tobool = icmp ne i8 %bf.lshr, 0
  store i1 %tobool, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #12
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
  %__l = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__long"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", %"struct.std::__1::basic_string<char>::__long"* %__l, i32 0, i32 0
  %1 = load i8*, i8** %__data_, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev(%"class.std::__1::basic_string"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_string"*, align 8
  store %"class.std::__1::basic_string"* %this, %"class.std::__1::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %__r_) #12
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", %"struct.std::__1::basic_string<char>::__rep"* %call, i32 0, i32 0
  %__s = bitcast %union.anon* %0 to %"struct.std::__1::basic_string<char>::__short"*
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", %"struct.std::__1::basic_string<char>::__short"* %__s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [23 x i8], [23 x i8]* %__data_, i64 0, i64 0
  %call2 = call i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %arrayidx) #12
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__130__libcpp_is_constant_evaluatedEv() #6 {
entry:
  ret i1 false
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev(%"class.std::__1::__compressed_pair"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::__compressed_pair"*, align 8
  store %"class.std::__1::__compressed_pair"* %this, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::__1::__compressed_pair"*, %"class.std::__1::__compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::__compressed_pair"* %this1 to %"struct.std::__1::__compressed_pair_elem"*
  %call = call nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %0) #12
  ret %"struct.std::__1::basic_string<char>::__rep"* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(24) %"struct.std::__1::basic_string<char>::__rep"* @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev(%"struct.std::__1::__compressed_pair_elem"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"struct.std::__1::__compressed_pair_elem"*, align 8
  store %"struct.std::__1::__compressed_pair_elem"* %this, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %this1 = load %"struct.std::__1::__compressed_pair_elem"*, %"struct.std::__1::__compressed_pair_elem"** %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem"* %this1, i32 0, i32 0
  ret %"struct.std::__1::basic_string<char>::__rep"* %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_(i8* nonnull align 1 dereferenceable(1) %__r) #6 align 2 {
entry:
  %__r.addr = alloca i8*, align 8
  store i8* %__r, i8** %__r.addr, align 8
  %0 = load i8*, i8** %__r.addr, align 8
  %call = call i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %0) #12
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNSt3__19addressofB6v15006IKcEEPT_RS2_(i8* nonnull align 1 dereferenceable(1) %__x) #6 {
entry:
  %__x.addr = alloca i8*, align 8
  store i8* %__x, i8** %__x.addr, align 8
  %0 = load i8*, i8** %__x.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::ostreambuf_iterator"* @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE(%"class.std::__1::ostreambuf_iterator"* returned %this, %"class.std::__1::basic_ostream"* nonnull align 8 dereferenceable(8) %__s) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::ostreambuf_iterator"*, align 8
  %__s.addr = alloca %"class.std::__1::basic_ostream"*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::ostreambuf_iterator"* %this, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  store %"class.std::__1::basic_ostream"* %__s, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %this1 = load %"class.std::__1::ostreambuf_iterator"*, %"class.std::__1::ostreambuf_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::ostreambuf_iterator"* %this1 to %"struct.std::__1::iterator"*
  %__sbuf_ = getelementptr inbounds %"class.std::__1::ostreambuf_iterator", %"class.std::__1::ostreambuf_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.std::__1::basic_ostream"*, %"class.std::__1::basic_ostream"** %__s.addr, align 8
  %2 = bitcast %"class.std::__1::basic_ostream"* %1 to i8**
  %vtable = load i8*, i8** %2, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::__1::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %vbase.offset
  %5 = bitcast i8* %add.ptr to %"class.std::__1::basic_ios"*
  %call = invoke %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::__1::basic_streambuf"* %call, %"class.std::__1::basic_streambuf"** %__sbuf_, align 8
  ret %"class.std::__1::ostreambuf_iterator"* %this1

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  br label %filter.dispatch

filter.dispatch:                                  ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__cxa_call_unexpected(i8* %exn) #10
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev(%"class.std::__1::basic_ios"* %this) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  %call = call i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %0)
  %1 = bitcast i8* %call to %"class.std::__1::basic_streambuf"*
  ret %"class.std::__1::basic_streambuf"* %1
}

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i8* @_ZNKSt3__18ios_base5rdbufB6v15006Ev(%"class.std::__1::ios_base"* %this) #6 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdbuf_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 6
  %0 = load i8*, i8** %__rdbuf_, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %__c1, i32 %__c2) #6 align 2 {
entry:
  %__c1.addr = alloca i32, align 4
  %__c2.addr = alloca i32, align 4
  store i32 %__c1, i32* %__c1.addr, align 4
  store i32 %__c2, i32* %__c2.addr, align 4
  %0 = load i32, i32* %__c1.addr, align 4
  %1 = load i32, i32* %__c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() #6 align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec(%"class.std::__1::basic_ios"* %this, i8 signext %__c) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::__1::basic_ios"*, align 8
  %__c.addr = alloca i8, align 1
  %ref.tmp = alloca %"class.std::__1::locale", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::__1::basic_ios"* %this, %"class.std::__1::basic_ios"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::basic_ios"*, %"class.std::__1::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::__1::basic_ios"* %this1 to %"class.std::__1::ios_base"*
  call void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8 %ref.tmp, %"class.std::__1::ios_base"* %0)
  %call = invoke nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %__c.addr, align 1
  %call3 = invoke signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %call, i8 signext %1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp)
  ret i8 %call3

lpad:                                             ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %call6 = invoke %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* %ref.tmp)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont5
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #11
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden nonnull align 8 dereferenceable(25) %"class.std::__1::ctype"* @_ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE(%"class.std::__1::locale"* nonnull align 8 dereferenceable(8) %__l) #0 {
entry:
  %__l.addr = alloca %"class.std::__1::locale"*, align 8
  store %"class.std::__1::locale"* %__l, %"class.std::__1::locale"** %__l.addr, align 8
  %0 = load %"class.std::__1::locale"*, %"class.std::__1::locale"** %__l.addr, align 8
  %call = call %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* %0, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
  %1 = bitcast %"class.std::__1::locale::facet"* %call to %"class.std::__1::ctype"*
  ret %"class.std::__1::ctype"* %1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret(%"class.std::__1::locale") align 8, %"class.std::__1::ios_base"*) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden signext i8 @_ZNKSt3__15ctypeIcE5widenB6v15006Ec(%"class.std::__1::ctype"* %this, i8 signext %__c) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ctype"*, align 8
  %__c.addr = alloca i8, align 1
  store %"class.std::__1::ctype"* %this, %"class.std::__1::ctype"** %this.addr, align 8
  store i8 %__c, i8* %__c.addr, align 1
  %this1 = load %"class.std::__1::ctype"*, %"class.std::__1::ctype"** %this.addr, align 8
  %0 = load i8, i8* %__c.addr, align 1
  %1 = bitcast %"class.std::__1::ctype"* %this1 to i8 (%"class.std::__1::ctype"*, i8)***
  %vtable = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %1, align 8
  %vfn = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vtable, i64 7
  %2 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %vfn, align 8
  %call = call signext i8 %2(%"class.std::__1::ctype"* %this1, i8 signext %0)
  ret i8 %call
}

declare %"class.std::__1::locale"* @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* returned) unnamed_addr #1

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* nonnull align 8 dereferenceable(12)) #1

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__18ios_base8setstateB6v15006Ej(%"class.std::__1::ios_base"* %this, i32 %__state) #0 align 2 {
entry:
  %this.addr = alloca %"class.std::__1::ios_base"*, align 8
  %__state.addr = alloca i32, align 4
  store %"class.std::__1::ios_base"* %this, %"class.std::__1::ios_base"** %this.addr, align 8
  store i32 %__state, i32* %__state.addr, align 4
  %this1 = load %"class.std::__1::ios_base"*, %"class.std::__1::ios_base"** %this.addr, align 8
  %__rdstate_ = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %this1, i32 0, i32 4
  %0 = load i32, i32* %__rdstate_, align 8
  %1 = load i32, i32* %__state.addr, align 4
  %or = or i32 %0, %1
  call void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %this1, i32 %or)
  ret void
}

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) #1

attributes #0 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

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
