.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field public static final CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final CREATE_FLAG_NONE:I = 0x0

.field public static final CREATE_FLAG_WAIT_FOR_ATTACH:I = 0x8

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final TRACE_TAG:J = 0x8000L

.field private static mCachePath:Ljava/lang/String; = null

.field private static mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static registerNativeFree:Ljava/lang/reflect/Method; = null

.field static sInitialized:Z = false

.field static final sMinorVersion:J = 0x1L

.field static sPointerSize:I

.field static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:J

.field private mContextFlags:I

.field private mContextSdkVersion:I

.field mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private mDestroyed:Z

.field volatile mElement_ALLOCATION:Landroid/renderscript/Element;

.field volatile mElement_A_8:Landroid/renderscript/Element;

.field volatile mElement_BOOLEAN:Landroid/renderscript/Element;

.field volatile mElement_CHAR_2:Landroid/renderscript/Element;

.field volatile mElement_CHAR_3:Landroid/renderscript/Element;

.field volatile mElement_CHAR_4:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_2:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_3:Landroid/renderscript/Element;

.field volatile mElement_DOUBLE_4:Landroid/renderscript/Element;

.field volatile mElement_ELEMENT:Landroid/renderscript/Element;

.field volatile mElement_F16:Landroid/renderscript/Element;

.field volatile mElement_F32:Landroid/renderscript/Element;

.field volatile mElement_F64:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_2:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_3:Landroid/renderscript/Element;

.field volatile mElement_FLOAT_4:Landroid/renderscript/Element;

.field volatile mElement_FONT:Landroid/renderscript/Element;

.field volatile mElement_HALF_2:Landroid/renderscript/Element;

.field volatile mElement_HALF_3:Landroid/renderscript/Element;

.field volatile mElement_HALF_4:Landroid/renderscript/Element;

.field volatile mElement_I16:Landroid/renderscript/Element;

.field volatile mElement_I32:Landroid/renderscript/Element;

.field volatile mElement_I64:Landroid/renderscript/Element;

.field volatile mElement_I8:Landroid/renderscript/Element;

.field volatile mElement_INT_2:Landroid/renderscript/Element;

.field volatile mElement_INT_3:Landroid/renderscript/Element;

.field volatile mElement_INT_4:Landroid/renderscript/Element;

.field volatile mElement_LONG_2:Landroid/renderscript/Element;

.field volatile mElement_LONG_3:Landroid/renderscript/Element;

.field volatile mElement_LONG_4:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field volatile mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field volatile mElement_MESH:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field volatile mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field volatile mElement_RGBA_4444:Landroid/renderscript/Element;

.field volatile mElement_RGBA_5551:Landroid/renderscript/Element;

.field volatile mElement_RGBA_8888:Landroid/renderscript/Element;

.field volatile mElement_RGB_565:Landroid/renderscript/Element;

.field volatile mElement_RGB_888:Landroid/renderscript/Element;

.field volatile mElement_SAMPLER:Landroid/renderscript/Element;

.field volatile mElement_SCRIPT:Landroid/renderscript/Element;

.field volatile mElement_SHORT_2:Landroid/renderscript/Element;

.field volatile mElement_SHORT_3:Landroid/renderscript/Element;

.field volatile mElement_SHORT_4:Landroid/renderscript/Element;

.field volatile mElement_TYPE:Landroid/renderscript/Element;

.field volatile mElement_U16:Landroid/renderscript/Element;

.field volatile mElement_U32:Landroid/renderscript/Element;

.field volatile mElement_U64:Landroid/renderscript/Element;

.field volatile mElement_U8:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_2:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_3:Landroid/renderscript/Element;

.field volatile mElement_UCHAR_4:Landroid/renderscript/Element;

.field volatile mElement_UINT_2:Landroid/renderscript/Element;

.field volatile mElement_UINT_3:Landroid/renderscript/Element;

.field volatile mElement_UINT_4:Landroid/renderscript/Element;

.field volatile mElement_ULONG_2:Landroid/renderscript/Element;

.field volatile mElement_ULONG_3:Landroid/renderscript/Element;

.field volatile mElement_ULONG_4:Landroid/renderscript/Element;

.field volatile mElement_USHORT_2:Landroid/renderscript/Element;

.field volatile mElement_USHORT_3:Landroid/renderscript/Element;

.field volatile mElement_USHORT_4:Landroid/renderscript/Element;

.field volatile mElement_YUV:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private mIsProcessContext:Z

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field volatile mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "RenderScript_jni"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 12
    .line 13
    const-string v2, "config.disable_renderscript"

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    const-string v2, "dalvik.system.VMRuntime"

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getRuntime"

    .line 28
    .line 29
    new-array v4, v1, [Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-array v4, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sput-object v3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 43
    .line 44
    const-string/jumbo v3, "registerNativeAllocation"

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    new-array v5, v4, [Ljava/lang/Class;

    .line 49
    .line 50
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v6, v5, v1

    .line 53
    .line 54
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    const-string/jumbo v3, "registerNativeFree"

    .line 61
    .line 62
    .line 63
    new-array v5, v4, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v6, v5, v1

    .line 66
    .line 67
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sput-object v1, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .line 73
    :try_start_1
    const-string/jumbo v1, "rs_jni"

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 80
    .line 81
    .line 82
    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 83
    .line 84
    invoke-static {}, Landroid/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    sput v1, Landroid/renderscript/RenderScript;->sPointerSize:I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Error loading RS jni library: "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :catch_1
    move-exception v1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, "Error loading GC methods: "

    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 6
    .line 7
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 8
    .line 9
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 15
    .line 16
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 17
    .line 18
    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    .line 19
    .line 20
    iput-object v1, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 36
    .line 37
    :try_start_0
    sget-object p1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    const/high16 v3, 0x400000

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aput-object v3, v2, v0

    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Couldn\'t invoke registerNativeAllocation:"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "RenderScript_jni"

    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method

.method public static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 2

    .line 5
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 4

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 6
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 9
    iget-object v3, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_1

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_1

    .line 10
    monitor-exit v0

    return-object v2

    .line 11
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 13
    sget-object p1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    invoke-static {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .locals 0

    invoke-static {p0, p3, p1, p2}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getCachePath()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    .line 15
    .line 16
    const-string v3, "com.android.renderscript.cache"

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sput-object v2, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    .line 32
    .line 33
    const-string v2, "RenderScript code cache directory uninitialized."

    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    .line 45
    throw v1
.end method

.method public static getMinorID()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static getMinorVersion()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private helpDestroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 17
    .line 18
    .line 19
    iget-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 20
    .line 21
    invoke-virtual {p0, v3, v4}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 25
    .line 26
    iput-boolean v2, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    move v0, v2

    .line 32
    :goto_1
    if-nez v2, :cond_1

    .line 33
    .line 34
    :try_start_1
    iget-object v3, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    move v2, v1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move v0, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string v0, "RenderScript_jni"

    .line 46
    .line 47
    const-string v1, "Interrupted during wait for MessageThread to join"

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw v0
.end method

.method private static internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 7

    .line 1
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "RenderScript_jni"

    .line 6
    .line 7
    const-string p1, "RenderScript.create() called when disabled; someone is likely to crash"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    and-int/lit8 v0, p3, -0xf

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Landroid/renderscript/RenderScript;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move v4, p3

    .line 31
    move v5, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nContextCreate(JIII)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iput-wide v1, v0, Landroid/renderscript/RenderScript;->mContext:J

    .line 37
    .line 38
    iput-object p2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 39
    .line 40
    iput p3, v0, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 41
    .line 42
    iput p1, v0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 43
    .line 44
    const-wide/16 p0, 0x0

    .line 45
    .line 46
    cmp-long p0, v1, p0

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Landroid/renderscript/RenderScript;->nContextSetCacheDir(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Landroid/renderscript/RenderScript$MessageThread;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_1
    new-instance p0, Landroid/renderscript/RSDriverException;

    .line 69
    .line 70
    const-string p1, "Failed to create RS context."

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    .line 77
    .line 78
    const-string p1, "Invalid flags passed."

    .line 79
    .line 80
    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static releaseAllContexts()V
    .locals 4

    .line 1
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/renderscript/RenderScript;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    iput-boolean v3, v2, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method public static native rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method public isAlive()Z
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized nAllocationAdapterCreate(JJ)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterCreate(JJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nAllocationAdapterOffset(JIIIIIIIII)V
    .locals 16

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    .line 7
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    move-wide/from16 v4, p1

    .line 12
    .line 13
    move/from16 v6, p3

    .line 14
    .line 15
    move/from16 v7, p4

    .line 16
    .line 17
    move/from16 v8, p5

    .line 18
    .line 19
    move/from16 v9, p6

    .line 20
    .line 21
    move/from16 v10, p7

    .line 22
    .line 23
    move/from16 v11, p8

    .line 24
    .line 25
    move/from16 v12, p9

    .line 26
    .line 27
    move/from16 v13, p10

    .line 28
    .line 29
    move/from16 v14, p11

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public declared-synchronized nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nAllocationCreateBitmapRef(JLandroid/graphics/Bitmap;)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nAllocationCreateFromAssetStream(III)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(JIII)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nAllocationCreateTyped(JIIJ)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move-wide v7, p5

    .line 12
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v14, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object/from16 v0, p8

    .line 9
    .line 10
    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-wide/from16 v4, p1

    .line 14
    .line 15
    move/from16 v6, p3

    .line 16
    .line 17
    move/from16 v7, p4

    .line 18
    .line 19
    move/from16 v8, p5

    .line 20
    .line 21
    move-object/from16 v9, p6

    .line 22
    .line 23
    move/from16 v10, p7

    .line 24
    .line 25
    move/from16 v12, p9

    .line 26
    .line 27
    move/from16 v13, p10

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public declared-synchronized nAllocationData2D(JIIIIIIJIIII)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 8
    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData3D(JIIIIIIIJIIII)V
    .locals 19

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move v15, v0

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationElementData(JIIIII[BI)V
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move/from16 v6, p3

    .line 11
    .line 12
    move/from16 v7, p4

    .line 13
    .line 14
    move/from16 v8, p5

    .line 15
    .line 16
    move/from16 v9, p6

    .line 17
    .line 18
    move/from16 v10, p7

    .line 19
    .line 20
    move-object/from16 v11, p8

    .line 21
    .line 22
    move/from16 v12, p9

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementData(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public declared-synchronized nAllocationElementRead(JIIIII[BI)V
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move/from16 v6, p3

    .line 11
    .line 12
    move/from16 v7, p4

    .line 13
    .line 14
    move/from16 v8, p5

    .line 15
    .line 16
    move/from16 v9, p6

    .line 17
    .line 18
    move/from16 v10, p7

    .line 19
    .line 20
    move-object/from16 v11, p8

    .line 21
    .line 22
    move/from16 v12, p9

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public declared-synchronized nAllocationGenerateMipmaps(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move v6, p4

    .line 11
    move v7, p5

    .line 12
    move v8, p6

    .line 13
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized nAllocationGetSurface(J)Landroid/view/Surface;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(JJ)Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nAllocationGetType(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nAllocationIoReceive(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nAllocationIoSend(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    iget v6, p4, Landroid/renderscript/Element$DataType;->mID:I

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p1

    .line 11
    move-object v5, p3

    .line 12
    move v7, p5

    .line 13
    move v8, p6

    .line 14
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 15

    .line 1
    move-object v14, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v14, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object/from16 v0, p8

    .line 9
    .line 10
    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-wide/from16 v4, p1

    .line 14
    .line 15
    move/from16 v6, p3

    .line 16
    .line 17
    move/from16 v7, p4

    .line 18
    .line 19
    move/from16 v8, p5

    .line 20
    .line 21
    move-object/from16 v9, p6

    .line 22
    .line 23
    move/from16 v10, p7

    .line 24
    .line 25
    move/from16 v12, p9

    .line 26
    .line 27
    move/from16 v13, p10

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public declared-synchronized nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    .line 7
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v0, p11

    .line 10
    .line 11
    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    .line 12
    .line 13
    move-object/from16 v1, p0

    .line 14
    .line 15
    move-wide/from16 v4, p1

    .line 16
    .line 17
    move/from16 v6, p3

    .line 18
    .line 19
    move/from16 v7, p4

    .line 20
    .line 21
    move/from16 v8, p5

    .line 22
    .line 23
    move/from16 v9, p6

    .line 24
    .line 25
    move/from16 v10, p7

    .line 26
    .line 27
    move/from16 v11, p8

    .line 28
    .line 29
    move-object/from16 v12, p9

    .line 30
    .line 31
    move/from16 v13, p10

    .line 32
    .line 33
    move/from16 v15, p12

    .line 34
    .line 35
    move/from16 v16, p13

    .line 36
    .line 37
    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public declared-synchronized nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    .line 7
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v0, p12

    .line 10
    .line 11
    iget v0, v0, Landroid/renderscript/Element$DataType;->mID:I

    .line 12
    .line 13
    move-object/from16 v1, p0

    .line 14
    .line 15
    move-wide/from16 v4, p1

    .line 16
    .line 17
    move/from16 v6, p3

    .line 18
    .line 19
    move/from16 v7, p4

    .line 20
    .line 21
    move/from16 v8, p5

    .line 22
    .line 23
    move/from16 v9, p6

    .line 24
    .line 25
    move/from16 v10, p7

    .line 26
    .line 27
    move/from16 v11, p8

    .line 28
    .line 29
    move/from16 v12, p9

    .line 30
    .line 31
    move-object/from16 v13, p10

    .line 32
    .line 33
    move/from16 v14, p11

    .line 34
    .line 35
    move v15, v0

    .line 36
    move/from16 v16, p13

    .line 37
    .line 38
    move/from16 v17, p14

    .line 39
    .line 40
    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public declared-synchronized nAllocationResize1D(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationSetupBufferQueue(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSetupBufferQueue(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationShareBufferQueue(JJ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationShareBufferQueue(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAllocationSyncAll(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nAssignName(J[B)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAssignName(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nClosureCreate(JJ[J[J[I[J[J)J
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move-wide/from16 v6, p3

    .line 11
    .line 12
    move-object/from16 v8, p5

    .line 13
    .line 14
    move-object/from16 v9, p6

    .line 15
    .line 16
    move-object/from16 v10, p7

    .line 17
    .line 18
    move-object/from16 v11, p8

    .line 19
    .line 20
    move-object/from16 v12, p9

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-wide v0

    .line 34
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 35
    .line 36
    const-string v1, "Failed creating closure."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public declared-synchronized nClosureSetArg(JIJI)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    move v8, p6

    .line 12
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nClosureSetGlobal(JJJI)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move-wide v6, p3

    .line 11
    move-wide/from16 v8, p5

    .line 12
    .line 13
    move/from16 v10, p7

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public declared-synchronized nContextBindProgramFragment(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextBindProgramRaster(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextBindProgramStore(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextBindProgramVertex(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextBindRootScript(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextBindSampler(II)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextCreate(JIII)J
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/RenderScript;->rsnContextCreate(JIII)J

    .line 3
    .line 4
    .line 5
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public declared-synchronized nContextCreateGL(JIIIIIIIIIIIIFI)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p16}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(JIIIIIIIIIIIIFI)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-wide v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    move-object v1, v0

    .line 10
    monitor-exit p0

    .line 11
    throw v1
.end method

.method public native nContextDeinitToClient(J)V
.end method

.method public declared-synchronized nContextDestroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    iput-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public declared-synchronized nContextDump(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextFinish()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public native nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method public native nContextGetUserMessage(J[I)I
.end method

.method public native nContextInitToClient(J)V
.end method

.method public declared-synchronized nContextPause()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextPause(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public native nContextPeekMessage(J[I)I
.end method

.method public declared-synchronized nContextResume()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextResume(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized nContextSendMessage(I[I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextSetCacheDir(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextSetPriority(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public native nDeviceCreate()J
.end method

.method public native nDeviceDestroy(J)V
.end method

.method public native nDeviceSetConfig(JII)V
.end method

.method public declared-synchronized nElementCreate(JIZI)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nElementGetNativeData(J[I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromAssetStream(J)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(JLjava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide v0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nFileA3DGetEntryByIndex(JI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(JJI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nFileA3DGetNumIndexEntries(J)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move-wide v6, p4

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(JLjava/lang/String;FI)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nGetName(J)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnGetName(JJ)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nInvokeClosureCreate(J[B[J[J[I)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object v8, p6

    .line 13
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    cmp-long p3, p1, p3

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-wide p1

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 26
    .line 27
    const-string p2, "Failed creating closure."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public declared-synchronized nMeshCreate([J[J[I)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshCreate(J[J[J[I)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nMeshGetIndexCount(J)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nMeshGetIndices(J[J[II)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(JJ[J[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nMeshGetVertexBufferCount(J)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nMeshGetVertices(J[JI)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(JJ[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public nObjDestroy(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public declared-synchronized nProgramBindConstants(JIJ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nProgramBindSampler(JIJ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nProgramBindTexture(JIJ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nProgramRasterCreate(ZI)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(JZI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized nProgramStoreCreate(ZZZZZZIII)J
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move v4, p1

    .line 10
    move/from16 v5, p2

    .line 11
    .line 12
    move/from16 v6, p3

    .line 13
    .line 14
    move/from16 v7, p4

    .line 15
    .line 16
    move/from16 v8, p5

    .line 17
    .line 18
    move/from16 v9, p6

    .line 19
    .line 20
    move/from16 v10, p7

    .line 21
    .line 22
    move/from16 v11, p8

    .line 23
    .line 24
    move/from16 v12, p9

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(JZZZZZZIII)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-wide v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nSamplerCreate(IIIIIF)J
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v7, p5

    .line 13
    move v8, p6

    .line 14
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-wide p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public declared-synchronized nScriptBindAllocation(JJI)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    move v7, p5

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(JJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized nScriptFieldIDCreate(JI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptForEach(JI[JJ[B[I)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v12, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move/from16 v6, p3

    .line 11
    .line 12
    move-object/from16 v7, p4

    .line 13
    .line 14
    move-wide/from16 v8, p5

    .line 15
    .line 16
    move-object/from16 v10, p7

    .line 17
    .line 18
    move-object/from16 v11, p8

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public declared-synchronized nScriptGetVarD(JI)D
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(JJI)D

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGetVarF(JI)F
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(JJI)F

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGetVarI(JI)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(JJI)I

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGetVarJ(JI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(JJI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGetVarV(JI[B)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long p3, p1, v0

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-wide p1

    .line 23
    :cond_0
    :try_start_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 24
    .line 25
    const-string p2, "Failed creating script group."

    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public declared-synchronized nScriptGroup2Execute(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nScriptGroupCreate([J[J[J[J[J)J
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p5

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-wide p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized nScriptGroupExecute(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized nScriptGroupSetInput(JJJ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    move-wide v7, p5

    .line 11
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptGroupSetOutput(JJJ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-wide v5, p3

    .line 10
    move-wide v7, p5

    .line 11
    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    .line 6
    .line 7
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    .line 8
    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    move-wide/from16 v4, p1

    .line 12
    .line 13
    move/from16 v6, p3

    .line 14
    .line 15
    move/from16 v7, p4

    .line 16
    .line 17
    move/from16 v8, p5

    .line 18
    .line 19
    move-wide/from16 v9, p6

    .line 20
    .line 21
    move/from16 v11, p8

    .line 22
    .line 23
    move-wide/from16 v12, p9

    .line 24
    .line 25
    move/from16 v14, p11

    .line 26
    .line 27
    move-wide/from16 v15, p12

    .line 28
    .line 29
    move/from16 v17, p14

    .line 30
    .line 31
    move/from16 v18, p15

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .locals 29

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move/from16 v22, p19

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .locals 29

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .locals 27

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p17

    move-wide/from16 v21, p18

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .locals 33

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move-wide/from16 v25, p22

    move-wide/from16 v27, p24

    move/from16 v29, p26

    move/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    invoke-virtual/range {v1 .. v32}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nScriptIntrinsicCreate(IJ)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v3, p1

    .line 9
    move-wide v4, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptInvoke(JI)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nScriptInvokeIDCreate(JI)J
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptInvokeV(JI[B)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptKernelIDCreate(JII)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJII)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized nScriptReduce(JI[JJ[I)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move v6, p3

    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    move-wide/from16 v8, p5

    .line 14
    .line 15
    move-object/from16 v10, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized nScriptSetTimeZone(J[B)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public declared-synchronized nScriptSetVarD(JID)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(JJID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarF(JIF)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(JJIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarI(JII)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarJ(JIJ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarObj(JIJ)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarV(JI[B)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public declared-synchronized nScriptSetVarVE(JI[BJ[I)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move v6, p3

    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    move-wide/from16 v8, p5

    .line 14
    .line 15
    move-object/from16 v10, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized nTypeCreate(JIIIZZI)J
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, v12, Landroid/renderscript/RenderScript;->mContext:J

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-wide v4, p1

    .line 10
    move/from16 v6, p3

    .line 11
    .line 12
    move/from16 v7, p4

    .line 13
    .line 14
    move/from16 v8, p5

    .line 15
    .line 16
    move/from16 v9, p6

    .line 17
    .line 18
    move/from16 v10, p7

    .line 19
    .line 20
    move/from16 v11, p8

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public declared-synchronized nTypeGetNativeData(J[J)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v5, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public native rsnAllocationAdapterCreate(JJJ)J
.end method

.method public native rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method public native rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationCreateBitmapRef(JJLandroid/graphics/Bitmap;)J
.end method

.method public native rsnAllocationCreateFromAssetStream(JIII)J
.end method

.method public native rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationCreateTyped(JJIIJ)J
.end method

.method public native rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method public native rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method public native rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method public native rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationElementData(JJIIIII[BI)V
.end method

.method public native rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method public native rsnAllocationGenerateMipmaps(JJ)V
.end method

.method public native rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
.end method

.method public native rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method public native rsnAllocationGetType(JJ)J
.end method

.method public native rsnAllocationIoReceive(JJ)J
.end method

.method public native rsnAllocationIoSend(JJ)V
.end method

.method public native rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method public native rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method public native rsnAllocationResize1D(JJI)V
.end method

.method public native rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method public native rsnAllocationSetupBufferQueue(JJI)V
.end method

.method public native rsnAllocationShareBufferQueue(JJJ)V
.end method

.method public native rsnAllocationSyncAll(JJI)V
.end method

.method public native rsnAssignName(JJ[B)V
.end method

.method public native rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method public native rsnClosureSetArg(JJIJI)V
.end method

.method public native rsnClosureSetGlobal(JJJJI)V
.end method

.method public native rsnContextBindProgramFragment(JJ)V
.end method

.method public native rsnContextBindProgramRaster(JJ)V
.end method

.method public native rsnContextBindProgramStore(JJ)V
.end method

.method public native rsnContextBindProgramVertex(JJ)V
.end method

.method public native rsnContextBindRootScript(JJ)V
.end method

.method public native rsnContextBindSampler(JII)V
.end method

.method public native rsnContextCreate(JIII)J
.end method

.method public native rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method public native rsnContextDestroy(J)V
.end method

.method public native rsnContextDump(JI)V
.end method

.method public native rsnContextFinish(J)V
.end method

.method public native rsnContextPause(J)V
.end method

.method public native rsnContextResume(J)V
.end method

.method public native rsnContextSendMessage(JI[I)V
.end method

.method public native rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method public native rsnContextSetPriority(JI)V
.end method

.method public native rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method public native rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method public native rsnElementCreate(JJIZI)J
.end method

.method public native rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method public native rsnElementGetNativeData(JJ[I)V
.end method

.method public native rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method public native rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method public native rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method public native rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method public native rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method public native rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method public native rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method public native rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method public native rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method public native rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method public native rsnGetName(JJ)Ljava/lang/String;
.end method

.method public native rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method public native rsnMeshCreate(J[J[J[I)J
.end method

.method public native rsnMeshGetIndexCount(JJ)I
.end method

.method public native rsnMeshGetIndices(JJ[J[II)V
.end method

.method public native rsnMeshGetVertexBufferCount(JJ)I
.end method

.method public native rsnMeshGetVertices(JJ[JI)V
.end method

.method public native rsnObjDestroy(JJ)V
.end method

.method public native rsnProgramBindConstants(JJIJ)V
.end method

.method public native rsnProgramBindSampler(JJIJ)V
.end method

.method public native rsnProgramBindTexture(JJIJ)V
.end method

.method public native rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method public native rsnProgramRasterCreate(JZI)J
.end method

.method public native rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method public native rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method public native rsnSamplerCreate(JIIIIIF)J
.end method

.method public native rsnScriptBindAllocation(JJJI)V
.end method

.method public native rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method public native rsnScriptFieldIDCreate(JJI)J
.end method

.method public native rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method public native rsnScriptGetVarD(JJI)D
.end method

.method public native rsnScriptGetVarF(JJI)F
.end method

.method public native rsnScriptGetVarI(JJI)I
.end method

.method public native rsnScriptGetVarJ(JJI)J
.end method

.method public native rsnScriptGetVarV(JJI[B)V
.end method

.method public native rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method public native rsnScriptGroup2Execute(JJ)V
.end method

.method public native rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method public native rsnScriptGroupExecute(JJ)V
.end method

.method public native rsnScriptGroupSetInput(JJJJ)V
.end method

.method public native rsnScriptGroupSetOutput(JJJJ)V
.end method

.method public native rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method public native rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method public native rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method public native rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method public native rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method public native rsnScriptIntrinsicCreate(JIJ)J
.end method

.method public native rsnScriptInvoke(JJI)V
.end method

.method public native rsnScriptInvokeIDCreate(JJI)J
.end method

.method public native rsnScriptInvokeV(JJI[B)V
.end method

.method public native rsnScriptKernelIDCreate(JJII)J
.end method

.method public native rsnScriptReduce(JJI[JJ[I)V
.end method

.method public native rsnScriptSetTimeZone(JJ[B)V
.end method

.method public native rsnScriptSetVarD(JJID)V
.end method

.method public native rsnScriptSetVarF(JJIF)V
.end method

.method public native rsnScriptSetVarI(JJII)V
.end method

.method public native rsnScriptSetVarJ(JJIJ)V
.end method

.method public native rsnScriptSetVarObj(JJIJ)V
.end method

.method public native rsnScriptSetVarV(JJI[B)V
.end method

.method public native rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method public native rsnTypeCreate(JJIIIZZI)J
.end method

.method public native rsnTypeGetNativeData(JJ[J)V
.end method

.method public safeID(Landroid/renderscript/BaseObj;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendMessage(I[I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public validate()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 11
    .line 12
    const-string v1, "Calling RS with no Context active."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public validateObject(Landroid/renderscript/BaseObj;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Attempting to use an object across contexts."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    return-void
.end method
