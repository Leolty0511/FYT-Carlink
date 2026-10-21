.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "SourceFile"


# instance fields
.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mMaxTileSize:I

.field private mTimer:Landroid/filterfw/core/StopWatchMap;

.field private shaderProgramId:I


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

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 10
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 11
    invoke-direct {p0, p1, v0, p2}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not compile and link shader!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 18
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object p1

    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not compile and link shader!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-void
.end method

.method private native allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native beginShaderDrawing()Z
.end method

.method private native compileAndLink()Z
.end method

.method public static createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private native deallocate()Z
.end method

.method private static getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Attempting to create ShaderProgram with no GL environment in place!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native getUniformValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;
.end method

.method private native setShaderAttributeValues(Ljava/lang/String;[FI)Z
.end method

.method private native setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z
.end method

.method private native setShaderBlendEnabled(Z)Z
.end method

.method private native setShaderBlendFunc(II)Z
.end method

.method private native setShaderClearColor(FFF)Z
.end method

.method private native setShaderClearsOutput(Z)Z
.end method

.method private native setShaderDrawMode(I)Z
.end method

.method private native setShaderTileCounts(II)Z
.end method

.method private native setShaderVertexCount(I)Z
.end method

.method private native setTargetRegion(FFFFFFFF)Z
.end method

.method private setTimer()V
    .locals 1

    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-void
.end method

.method private native setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z
.end method


# virtual methods
.method public beginDrawing()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->beginShaderDrawing()Z

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
    const-string v1, "Could not prepare shader-program for drawing!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->deallocate()Z

    return-void
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->getUniformValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v1, "glFinish"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    array-length v0, p1

    .line 22
    new-array v0, v0, [Landroid/filterfw/core/GLFrame;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p1

    .line 26
    if-ge v1, v2, :cond_2

    .line 27
    .line 28
    aget-object v2, p1, v1

    .line 29
    .line 30
    instance-of v3, v2, Landroid/filterfw/core/GLFrame;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Landroid/filterfw/core/GLFrame;

    .line 35
    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string p2, "ShaderProgram got non-GL frame as input "

    .line 44
    .line 45
    const-string v0, "!"

    .line 46
    .line 47
    invoke-static {p2, v1, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    instance-of p1, p2, Landroid/filterfw/core/GLFrame;

    .line 56
    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    move-object p1, p2

    .line 60
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 61
    .line 62
    iget v1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 63
    .line 64
    if-lez v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 75
    .line 76
    add-int/2addr v1, v2

    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 78
    .line 79
    div-int/2addr v1, v2

    .line 80
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 89
    .line 90
    add-int/2addr p2, v2

    .line 91
    add-int/lit8 p2, p2, -0x1

    .line 92
    .line 93
    div-int/2addr p2, v2

    .line 94
    invoke-direct {p0, v1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderTileCounts(II)Z

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-direct {p0, v0, p1}, Landroid/filterfw/core/ShaderProgram;->shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    iget-object p1, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 104
    .line 105
    iget-boolean p1, p1, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void

    .line 113
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    const-string p2, "Error executing ShaderProgram!"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    const-string p2, "ShaderProgram got non-GL output frame!"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p7}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error setting attribute value for attribute \'"

    const-string p4, "\'!"

    .line 12
    invoke-static {p3, p1, p4}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAttributeValues(Ljava/lang/String;[FI)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeValues(Ljava/lang/String;[FI)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error setting attribute value for attribute \'"

    const-string v0, "\'!"

    .line 3
    invoke-static {p3, p1, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setBlendEnabled(Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendEnabled(Z)Z

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Could not set Blending "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "!"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public setBlendFunc(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendFunc(II)Z

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
    const-string v1, "Could not set BlendFunc "

    .line 11
    .line 12
    const-string v2, ","

    .line 13
    .line 14
    const-string v3, "!"

    .line 15
    .line 16
    invoke-static {v1, p1, v2, p2, v3}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public setClearColor(FFF)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderClearColor(FFF)Z

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Could not set clear color to "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ","

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "!"

    .line 32
    .line 33
    invoke-static {v1, p3, p1}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public setClearsOutput(Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderClearsOutput(Z)Z

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Could not set clears-output flag to "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "!"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public setDrawMode(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderDrawMode(I)Z

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
    const-string v1, "Could not set GL draw-mode to "

    .line 11
    .line 12
    const-string v2, "!"

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v0, "Error setting uniform value for variable \'"

    .line 11
    .line 12
    const-string v1, "\'!"

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p2
.end method

.method public setMaximumTileSize(I)V
    .locals 0

    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 9

    add-float v7, p1, p3

    add-float v8, p2, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v7

    move v4, p2

    move v5, p1

    move v6, v8

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    return-void
.end method

.method public setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v9, p1, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    return-void
.end method

.method public native setSourceRegion(FFFFFFFF)Z
.end method

.method public setTargetRect(FFFF)V
    .locals 9

    add-float v7, p1, p3

    add-float v8, p2, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v7

    move v4, p2

    move v5, p1

    move v6, v8

    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    return-void
.end method

.method public setTargetRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, p1, Landroid/filterfw/geometry/Point;->x:F

    iget v9, p1, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    return-void
.end method

.method public setVertexCount(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderVertexCount(I)Z

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
    const-string v1, "Could not set GL vertex count to "

    .line 11
    .line 12
    const-string v2, "!"

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
