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
.field public static final DEBUG:Z = false

.field public static final LOG_ENABLED:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field public static final TRACE_TAG:J = 0x8000L

.field public static mCacheDir:Ljava/io/File; = null

.field public static registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field public static registerNativeFree:Ljava/lang/reflect/Method; = null

.field public static sInitialized:Z = false

.field public static final sMinorID:J = 0x1L

.field public static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field public mContext:I

.field public mContextType:Landroid/renderscript/RenderScript$ContextType;

.field public mDev:I

.field public mElement_ALLOCATION:Landroid/renderscript/Element;

.field public mElement_A_8:Landroid/renderscript/Element;

.field public mElement_BOOLEAN:Landroid/renderscript/Element;

.field public mElement_CHAR_2:Landroid/renderscript/Element;

.field public mElement_CHAR_3:Landroid/renderscript/Element;

.field public mElement_CHAR_4:Landroid/renderscript/Element;

.field public mElement_DOUBLE_2:Landroid/renderscript/Element;

.field public mElement_DOUBLE_3:Landroid/renderscript/Element;

.field public mElement_DOUBLE_4:Landroid/renderscript/Element;

.field public mElement_ELEMENT:Landroid/renderscript/Element;

.field public mElement_F32:Landroid/renderscript/Element;

.field public mElement_F64:Landroid/renderscript/Element;

.field public mElement_FLOAT_2:Landroid/renderscript/Element;

.field public mElement_FLOAT_3:Landroid/renderscript/Element;

.field public mElement_FLOAT_4:Landroid/renderscript/Element;

.field public mElement_FONT:Landroid/renderscript/Element;

.field public mElement_I16:Landroid/renderscript/Element;

.field public mElement_I32:Landroid/renderscript/Element;

.field public mElement_I64:Landroid/renderscript/Element;

.field public mElement_I8:Landroid/renderscript/Element;

.field public mElement_INT_2:Landroid/renderscript/Element;

.field public mElement_INT_3:Landroid/renderscript/Element;

.field public mElement_INT_4:Landroid/renderscript/Element;

.field public mElement_LONG_2:Landroid/renderscript/Element;

.field public mElement_LONG_3:Landroid/renderscript/Element;

.field public mElement_LONG_4:Landroid/renderscript/Element;

.field public mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field public mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field public mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field public mElement_MESH:Landroid/renderscript/Element;

.field public mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field public mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field public mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field public mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field public mElement_RGBA_4444:Landroid/renderscript/Element;

.field public mElement_RGBA_5551:Landroid/renderscript/Element;

.field public mElement_RGBA_8888:Landroid/renderscript/Element;

.field public mElement_RGB_565:Landroid/renderscript/Element;

.field public mElement_RGB_888:Landroid/renderscript/Element;

.field public mElement_SAMPLER:Landroid/renderscript/Element;

.field public mElement_SCRIPT:Landroid/renderscript/Element;

.field public mElement_SHORT_2:Landroid/renderscript/Element;

.field public mElement_SHORT_3:Landroid/renderscript/Element;

.field public mElement_SHORT_4:Landroid/renderscript/Element;

.field public mElement_TYPE:Landroid/renderscript/Element;

.field public mElement_U16:Landroid/renderscript/Element;

.field public mElement_U32:Landroid/renderscript/Element;

.field public mElement_U64:Landroid/renderscript/Element;

.field public mElement_U8:Landroid/renderscript/Element;

.field public mElement_UCHAR_2:Landroid/renderscript/Element;

.field public mElement_UCHAR_3:Landroid/renderscript/Element;

.field public mElement_UCHAR_4:Landroid/renderscript/Element;

.field public mElement_UINT_2:Landroid/renderscript/Element;

.field public mElement_UINT_3:Landroid/renderscript/Element;

.field public mElement_UINT_4:Landroid/renderscript/Element;

.field public mElement_ULONG_2:Landroid/renderscript/Element;

.field public mElement_ULONG_3:Landroid/renderscript/Element;

.field public mElement_ULONG_4:Landroid/renderscript/Element;

.field public mElement_USHORT_2:Landroid/renderscript/Element;

.field public mElement_USHORT_3:Landroid/renderscript/Element;

.field public mElement_USHORT_4:Landroid/renderscript/Element;

.field public mElement_YUV:Landroid/renderscript/Element;

.field public mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field public mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field public mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field public mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field public mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field public mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field public mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field public mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field public mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field public mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field public mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field public mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field public mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field public mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "RenderScript_jni"

    const-string v1, "config.disable_renderscript"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getRuntime"

    new-array v4, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const-string v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 5
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    const-string v3, "registerNativeFree"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 6
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "rs_jni"

    .line 7
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 9
    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading GC methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 3
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 4
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 6
    :cond_0
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1

    .line 11
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 3

    .line 2
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "RenderScript_jni"

    const-string p1, "RenderScript.create() called when disabled; someone is likely to crash"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result p0

    iput p0, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v1, 0x0

    .line 6
    iget v2, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nContextCreate(IIII)I

    move-result p0

    iput p0, v0, Landroid/renderscript/RenderScript;->mContext:I

    .line 7
    iput-object p2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-eqz p0, :cond_1

    .line 8
    new-instance p0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {p0, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object p0, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Landroid/renderscript/RSDriverException;

    const-string p1, "Failed to create RS context."

    invoke-direct {p0, p1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 13
    invoke-static {p0, v0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static getMinorID()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_0

    const-string p0, "RenderScript_jni"

    const-string v0, "RenderScript.setupDiskCache() called when disabled"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sput-object p0, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 3
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 4
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 7
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 8
    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCreateFromAssetStream(III)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCreateTyped(IIII)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData1D(IIII[BI)V
    .locals 8

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 8
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData1D(IIII[FI)V
    .locals 8

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 11
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData1D(IIII[II)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData1D(IIII[SI)V
    .locals 8

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
    .locals 16

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v2, v15, Landroid/renderscript/RenderScript;->mContext:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
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

.method public declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget v2, v12, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
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

.method public declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    iget v2, v12, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData2D(IIIIIII[II)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 11
    iget v2, v12, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 8
    iget v2, v12, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
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

.method public declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .locals 8

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 17
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationData3D(IIIIIIIIIIIII)V
    .locals 16

    move-object/from16 v15, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v2, v15, Landroid/renderscript/RenderScript;->mContext:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v1 .. v15}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIIIIIIII)V
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

.method public declared-synchronized nAllocationData3D(IIIIIIII[BI)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget v2, v13, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[BI)V
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

.method public declared-synchronized nAllocationData3D(IIIIIIII[FI)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    iget v2, v13, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData3D(IIIIIIII[II)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 11
    iget v2, v13, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nAllocationData3D(IIIIIIII[SI)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 8
    iget v2, v13, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[SI)V
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

.method public declared-synchronized nAllocationElementData1D(IIII[BI)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationGenerateMipmaps(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationGetSurface(I)Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(II)Landroid/view/Surface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationGetType(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationIoReceive(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationIoSend(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationRead(I[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationRead(I[F)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 11
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationRead(I[I)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 8
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationRead(I[S)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 5
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationResize1D(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationSetSurface(ILandroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAllocationSyncAll(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nAssignName(I[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAssignName(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindProgramFragment(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindProgramRaster(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindProgramStore(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindProgramVertex(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindRootScript(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextBindSampler(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextCreate(IIII)I
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/renderscript/RenderScript;->rsnContextCreate(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextCreateGL(IIIIIIIIIIIIIFI)I
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p15}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(IIIIIIIIIIIIIFI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native nContextDeinitToClient(I)V
.end method

.method public declared-synchronized nContextDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Landroid/renderscript/RenderScript;->mContext:I

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 7
    invoke-virtual {p0, v1}, Landroid/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nContextDump(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextFinish()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextFinish(I)V
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

.method public native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method public native nContextGetUserMessage(I[I)I
.end method

.method public native nContextInitToClient(I)V
.end method

.method public declared-synchronized nContextPause()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextPause(I)V
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

.method public native nContextPeekMessage(I[I)I
.end method

.method public declared-synchronized nContextResume()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextResume(I)V
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

.method public declared-synchronized nContextSendMessage(I[I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextSetPriority(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(IIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native nDeviceCreate()I
.end method

.method public native nDeviceDestroy(I)V
.end method

.method public native nDeviceSetConfig(III)V
.end method

.method public declared-synchronized nElementCreate(IIZI)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate(IIIZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nElementGetNativeData(I[I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromAssetStream(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DGetEntryByIndex(II)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFileA3DGetNumIndexEntries(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FII)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(ILjava/lang/String;FI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nGetName(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnGetName(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nMeshCreate([I[I[I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshCreate(I[I[I[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nMeshGetIndexCount(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nMeshGetIndices(I[I[II)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(II[I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nMeshGetVertexBufferCount(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nMeshGetVertices(I[II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(II[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public nObjDestroy(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnObjDestroy(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized nPathCreate(IZIIF)I
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnPathCreate(IIZIIF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramBindConstants(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramBindSampler(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramBindTexture(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramRasterCreate(ZI)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(IZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nProgramStoreCreate(ZZZZZZIII)I
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v2, v12, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(IZZZZZZIII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nSamplerCreate(IIIIIF)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptBindAllocation(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptFieldIDCreate(II)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptForEach(IIII[B)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    if-nez p5, :cond_0

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptForEachClipped(IIII[BIIIIII)V
    .locals 15

    move-object v14, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    if-nez p5, :cond_0

    .line 2
    iget v2, v14, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIIIIIIIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v14, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIII[BIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nScriptGetVarD(II)D
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(III)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGetVarF(II)F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(III)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGetVarI(II)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGetVarJ(II)J
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(III)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGetVarV(II[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGroupCreate([I[I[I[I[I)I
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(I[I[I[I[I[I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGroupExecute(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGroupSetInput(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptGroupSetOutput(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptIntrinsicCreate(II)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptInvoke(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptInvokeV(II[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptKernelIDCreate(III)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetTimeZone(I[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarD(IID)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarF(IIF)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarI(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarJ(IIJ)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarObj(III)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarV(II[B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nScriptSetVarVE(II[BI[I)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(III[BI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized nTypeCreate(IIIIZZI)I
    .locals 11

    move-object v10, p0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v2, v10, Landroid/renderscript/RenderScript;->mContext:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nTypeGetNativeData(I[I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method public native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method public native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method public native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method public native rsnAllocationCreateTyped(IIIII)I
.end method

.method public native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method public native rsnAllocationData1D(IIIII[BI)V
.end method

.method public native rsnAllocationData1D(IIIII[FI)V
.end method

.method public native rsnAllocationData1D(IIIII[II)V
.end method

.method public native rsnAllocationData1D(IIIII[SI)V
.end method

.method public native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method

.method public native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method public native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method public native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method public native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method public native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method public native rsnAllocationData3D(IIIIIIIIIIIIII)V
.end method

.method public native rsnAllocationData3D(IIIIIIIII[BI)V
.end method

.method public native rsnAllocationData3D(IIIIIIIII[FI)V
.end method

.method public native rsnAllocationData3D(IIIIIIIII[II)V
.end method

.method public native rsnAllocationData3D(IIIIIIIII[SI)V
.end method

.method public native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method public native rsnAllocationGenerateMipmaps(II)V
.end method

.method public native rsnAllocationGetSurface(II)Landroid/view/Surface;
.end method

.method public native rsnAllocationGetType(II)I
.end method

.method public native rsnAllocationIoReceive(II)V
.end method

.method public native rsnAllocationIoSend(II)V
.end method

.method public native rsnAllocationRead(II[B)V
.end method

.method public native rsnAllocationRead(II[F)V
.end method

.method public native rsnAllocationRead(II[I)V
.end method

.method public native rsnAllocationRead(II[S)V
.end method

.method public native rsnAllocationResize1D(III)V
.end method

.method public native rsnAllocationSetSurface(IILandroid/view/Surface;)V
.end method

.method public native rsnAllocationSyncAll(III)V
.end method

.method public native rsnAssignName(II[B)V
.end method

.method public native rsnContextBindProgramFragment(II)V
.end method

.method public native rsnContextBindProgramRaster(II)V
.end method

.method public native rsnContextBindProgramStore(II)V
.end method

.method public native rsnContextBindProgramVertex(II)V
.end method

.method public native rsnContextBindRootScript(II)V
.end method

.method public native rsnContextBindSampler(III)V
.end method

.method public native rsnContextCreate(IIII)I
.end method

.method public native rsnContextCreateGL(IIIIIIIIIIIIIFI)I
.end method

.method public native rsnContextDestroy(I)V
.end method

.method public native rsnContextDump(II)V
.end method

.method public native rsnContextFinish(I)V
.end method

.method public native rsnContextPause(I)V
.end method

.method public native rsnContextResume(I)V
.end method

.method public native rsnContextSendMessage(II[I)V
.end method

.method public native rsnContextSetPriority(II)V
.end method

.method public native rsnContextSetSurface(IIILandroid/view/Surface;)V
.end method

.method public native rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
.end method

.method public native rsnElementCreate(IIIZI)I
.end method

.method public native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method public native rsnElementGetNativeData(II[I)V
.end method

.method public native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method

.method public native rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method public native rsnFileA3DCreateFromAssetStream(II)I
.end method

.method public native rsnFileA3DCreateFromFile(ILjava/lang/String;)I
.end method

.method public native rsnFileA3DGetEntryByIndex(III)I
.end method

.method public native rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
.end method

.method public native rsnFileA3DGetNumIndexEntries(II)I
.end method

.method public native rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
.end method

.method public native rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
.end method

.method public native rsnFontCreateFromFile(ILjava/lang/String;FI)I
.end method

.method public native rsnGetName(II)Ljava/lang/String;
.end method

.method public native rsnMeshCreate(I[I[I[I)I
.end method

.method public native rsnMeshGetIndexCount(II)I
.end method

.method public native rsnMeshGetIndices(II[I[II)V
.end method

.method public native rsnMeshGetVertexBufferCount(II)I
.end method

.method public native rsnMeshGetVertices(II[II)V
.end method

.method public native rsnObjDestroy(II)V
.end method

.method public native rsnPathCreate(IIZIIF)I
.end method

.method public native rsnProgramBindConstants(IIII)V
.end method

.method public native rsnProgramBindSampler(IIII)V
.end method

.method public native rsnProgramBindTexture(IIII)V
.end method

.method public native rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method public native rsnProgramRasterCreate(IZI)I
.end method

.method public native rsnProgramStoreCreate(IZZZZZZIII)I
.end method

.method public native rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method public native rsnSamplerCreate(IIIIIIF)I
.end method

.method public native rsnScriptBindAllocation(IIII)V
.end method

.method public native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method

.method public native rsnScriptFieldIDCreate(III)I
.end method

.method public native rsnScriptForEach(IIIII)V
.end method

.method public native rsnScriptForEach(IIIII[B)V
.end method

.method public native rsnScriptForEachClipped(IIIIIIIIIII)V
.end method

.method public native rsnScriptForEachClipped(IIIII[BIIIIII)V
.end method

.method public native rsnScriptGetVarD(III)D
.end method

.method public native rsnScriptGetVarF(III)F
.end method

.method public native rsnScriptGetVarI(III)I
.end method

.method public native rsnScriptGetVarJ(III)J
.end method

.method public native rsnScriptGetVarV(III[B)V
.end method

.method public native rsnScriptGroupCreate(I[I[I[I[I[I)I
.end method

.method public native rsnScriptGroupExecute(II)V
.end method

.method public native rsnScriptGroupSetInput(IIII)V
.end method

.method public native rsnScriptGroupSetOutput(IIII)V
.end method

.method public native rsnScriptIntrinsicCreate(III)I
.end method

.method public native rsnScriptInvoke(III)V
.end method

.method public native rsnScriptInvokeV(III[B)V
.end method

.method public native rsnScriptKernelIDCreate(IIII)I
.end method

.method public native rsnScriptSetTimeZone(II[B)V
.end method

.method public native rsnScriptSetVarD(IIID)V
.end method

.method public native rsnScriptSetVarF(IIIF)V
.end method

.method public native rsnScriptSetVarI(IIII)V
.end method

.method public native rsnScriptSetVarJ(IIIJ)V
.end method

.method public native rsnScriptSetVarObj(IIII)V
.end method

.method public native rsnScriptSetVarV(III[B)V
.end method

.method public native rsnScriptSetVarVE(III[BI[I)V
.end method

.method public native rsnTypeCreate(IIIIIZZI)I
.end method

.method public native rsnTypeGetNativeData(II[I)V
.end method

.method public safeID(Landroid/renderscript/BaseObj;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendMessage(I[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget p1, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    return-void
.end method

.method public validate()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
