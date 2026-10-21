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

    .line 1
    const-string v0, "filterfw"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "Attempting to access "

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " with foreign GL context active!"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " with no GL context  active!"

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
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

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v0, "Could not allocate external GL frame!"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    iget-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v0, "Could not allocate GL frame!"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method private initWithFbo(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 18
    .line 19
    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    const-string v0, "Could not allocate FBO backed GL frame!"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method private initWithTexture(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 18
    .line 19
    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->markReadOnly()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    const-string v0, "Could not allocate texture backed GL frame!"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "glFinish "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "Could not focus on GLFrame for drawing!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public generateMipMap()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Could not generate mip-map for GL frame!"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getBitmap"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v1, "Could not get bitmap data from GL frame!"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getData"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getFboId()I
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    move-result v0

    return v0
.end method

.method public getFloats()[F
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getFloats"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getInts()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "getInts"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hasNativeAllocation()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public init(Landroid/filterfw/core/GLEnvironment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne p1, v1, :cond_8

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ltz p1, :cond_6

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingType()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v2, 0x68

    .line 44
    .line 45
    if-ne p1, v2, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, v1}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/16 v0, 0x64

    .line 52
    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    long-to-int p1, v2

    .line 60
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/16 v0, 0x65

    .line 65
    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    long-to-int p1, v2

    .line 73
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/16 v0, 0x66

    .line 78
    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    long-to-int p1, v2

    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/16 v0, 0x67

    .line 91
    .line 92
    if-ne p1, v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getBindingId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    long-to-int p1, v2

    .line 99
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    .line 100
    .line 101
    .line 102
    :goto_0
    move v0, v1

    .line 103
    :goto_1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setReusable(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 108
    .line 109
    const-string v1, "Attempting to create GL frame with unknown binding type "

    .line 110
    .line 111
    const-string v2, "!"

    .line 112
    .line 113
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string v0, "Initializing GL frame with zero size!"

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string v0, "GL frames must be 2-dimensional!"

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string v0, "GL frames must have 4 bytes per sample!"

    .line 140
    .line 141
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method public onFrameFetch()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onFrameStore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public declared-synchronized releaseNativeAllocation()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    .line 3
    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v0, "Could not reset GLFrame texture parameters!"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Landroid/filterfw/core/Frame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    const-string v0, "Could not set GL frame bitmap data!"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string v0, "Bitmap dimensions do not match GL frame dimensions!"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    array-length v1, p1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    const-string p2, "Could not set GL frame data!"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string p2, "Data size in setData does not match GL frame size!"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lt v0, v1, :cond_3

    .line 21
    .line 22
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Attempting to assign frame of size "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " to smaller GL frame of size "

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, "!"

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public setFloats([F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, "Could not set int values for GL frame!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setInts([I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, "Could not set int values for GL frame!"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setTextureParameter(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Could not set texture value "

    .line 17
    .line 18
    const-string v2, " = "

    .line 19
    .line 20
    const-string v3, " for GLFrame!"

    .line 21
    .line 22
    invoke-static {v1, p1, v2, p2, v3}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
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

    .line 2
    .line 3
    const-string v1, "GLFrame id: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ") with texture ID "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", FBO ID "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
