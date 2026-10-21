.class public Landroid/filterfw/core/GLFrame;
.super Landroid/filterfw/core/Frame;
.source "SourceFile"


# static fields
.field public static final EXISTING_FBO_BINDING:I = 0x65

.field public static final EXISTING_TEXTURE_BINDING:I = 0x64

.field public static final EXTERNAL_TEXTURE:I = 0x68

.field public static final NEW_FBO_BINDING:I = 0x67

.field public static final NEW_TEXTURE_BINDING:I = 0x66


# instance fields
.field private glFrameId:I

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mOwnsTexture:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "filterfw"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    return-void
.end method

.method private assertGLEnvValid()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v0

    const-string v1, "Attempting to access "

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with foreign GL "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "context active!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with no GL context "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " active!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private native generateNativeMipMap()Z
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private native getNativeData()[B
.end method

.method private native getNativeFboId()I
.end method

.method private native getNativeFloats()[F
.end method

.method private native getNativeInts()[I
.end method

.method private native getNativeTextureId()I
.end method

.method private initNew(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not allocate external GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not allocate GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initWithFbo(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not allocate FBO backed GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initWithTexture(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 5
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->markReadOnly()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not allocate texture backed GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z
.end method

.method private native nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z
.end method

.method private native nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDetachTexFromFbo()Z
.end method

.method private native nativeFocus()Z
.end method

.method private native nativeReattachTexToFbo()Z
.end method

.method private native nativeResetParams()Z
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method

.method private native setNativeTextureParam(II)Z
.end method

.method private native setNativeViewport(IIII)Z
.end method


# virtual methods
.method public flushGPU(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/filterfw/core/GLFrameTimer;->get()Landroid/filterfw/core/StopWatchMap;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public focus()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not focus on GLFrame for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateMipMap()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not generate mip-map for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getBitmap"

    .line 2
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get bitmap data from GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getData"

    .line 2
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFboId()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    move-result v0

    return v0
.end method

.method public getFloats()[F
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getFloats"

    .line 2
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getInts()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    const-string v0, "getInts"

    .line 2
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hasNativeAllocation()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/filterfw/core/GLEnvironment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 2
    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p1

    if-ltz p1, :cond_6

    .line 6
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x68

    if-ne p1, v2, :cond_1

    .line 8
    invoke-direct {p0, v1}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x67

    if-ne p1, v0, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    :goto_0
    move v0, v1

    .line 13
    :goto_1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setReusable(Z)V

    return-void

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to create GL frame with unknown binding type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Initializing GL frame with zero size!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GL frames must be 2-dimensional!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GL frames must have 4 bytes per sample!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFrameFetch()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    :cond_0
    return-void
.end method

.method public onFrameStore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    :cond_0
    return-void
.end method

.method public declared-synchronized releaseNativeAllocation()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
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

.method public reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not reset GLFrame texture parameters!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/filterfw/core/Frame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not set GL frame bitmap data!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Bitmap dimensions do not match GL frame dimensions!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not set GL frame data!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data size in setData does not match GL frame size!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 3
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroid/filterfw/core/GLFrame;

    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    :goto_0
    return-void

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "smaller GL frame of size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloats([F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not set int values for GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInts([I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not set int values for GL frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextureParameter(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set texture value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for GLFrame!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewport(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    return-void
.end method

.method public setViewport(Landroid/graphics/Rect;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") with texture ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
