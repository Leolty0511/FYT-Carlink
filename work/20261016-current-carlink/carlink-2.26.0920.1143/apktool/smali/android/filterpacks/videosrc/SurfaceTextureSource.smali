.class public Landroid/filterpacks/videosrc/SurfaceTextureSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureSource"

.field private static final mLogVerbose:Z

.field private static final mSourceCoords:[F


# instance fields
.field private mCloseOnTimeout:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "closeOnTimeout"
    .end annotation
.end field

.field private mFirstFrame:Z

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mFrameTransform:[F

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mMappedCoords:[F

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mNewFrameAvailable:Landroid/os/ConditionVariable;

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private final mRenderShader:Ljava/lang/String;

.field private mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "sourceListener"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWaitTimeout:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitTimeout"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    .line 9
    .line 10
    const-string v0, "SurfaceTextureSource"

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    .line 6
    .line 7
    const/16 p1, 0x3e8

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    .line 13
    .line 14
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 15
    .line 16
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mRenderShader:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;-><init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 24
    .line 25
    new-instance p1, Landroid/os/ConditionVariable;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 31
    .line 32
    const/16 p1, 0x10

    .line 33
    .line 34
    new-array v0, p1, [F

    .line 35
    .line 36
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    .line 37
    .line 38
    new-array p1, p1, [F

    .line 39
    .line 40
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    return v0
.end method

.method public static synthetic access$100(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private createFormats()V
    .locals 3

    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    sget-boolean p1, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "SurfaceTextureSource"

    .line 6
    .line 7
    const-string v0, "SurfaceTextureSource closed"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 24
    .line 25
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    const-string/jumbo p2, "width"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string/jumbo p2, "height"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 20
    .line 21
    iget p2, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWidth:I

    .line 22
    .line 23
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mHeight:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    sget-boolean p1, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "SurfaceTextureSource"

    .line 6
    .line 7
    const-string v0, "Opening SurfaceTextureSource"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceListener:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 31
    .line 32
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 39
    .line 40
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SurfaceTextureSource"

    .line 6
    .line 7
    const-string v1, "Preparing SurfaceTextureSource"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->createFormats()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 20
    .line 21
    const/16 v2, 0x68

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/filterfw/core/GLFrame;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 32
    .line 33
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 34
    .line 35
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 41
    .line 42
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mLogVerbose:Z

    .line 4
    .line 5
    const-string v2, "SurfaceTextureSource"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v3, "Processing new frame"

    .line 10
    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitForNewFrame:Z

    .line 15
    .line 16
    const-string/jumbo v4, "video"

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    :cond_1
    iget v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mWaitTimeout:I

    .line 27
    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    iget-object v6, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 31
    .line 32
    int-to-long v7, v3

    .line 33
    invoke-virtual {v6, v7, v8}, Landroid/os/ConditionVariable;->block(J)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_5

    .line 38
    .line 39
    iget-boolean v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mCloseOnTimeout:Z

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v1, "Timeout waiting for a new frame. Closing."

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0, v4}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string v2, "Timeout waiting for new frame"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_4
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mNewFrameAvailable:Landroid/os/ConditionVariable;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 70
    .line 71
    .line 72
    iput-boolean v5, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFirstFrame:Z

    .line 73
    .line 74
    :cond_6
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 80
    .line 81
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    iget-object v8, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameTransform:[F

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    sget-object v10, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSourceCoords:[F

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 96
    .line 97
    .line 98
    iget-object v12, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 99
    .line 100
    iget-object v1, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMappedCoords:[F

    .line 101
    .line 102
    aget v13, v1, v5

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    aget v14, v1, v2

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    aget v15, v1, v2

    .line 109
    .line 110
    const/4 v2, 0x5

    .line 111
    aget v16, v1, v2

    .line 112
    .line 113
    const/16 v2, 0x8

    .line 114
    .line 115
    aget v17, v1, v2

    .line 116
    .line 117
    const/16 v2, 0x9

    .line 118
    .line 119
    aget v18, v1, v2

    .line 120
    .line 121
    const/16 v2, 0xc

    .line 122
    .line 123
    aget v19, v1, v2

    .line 124
    .line 125
    const/16 v2, 0xd

    .line 126
    .line 127
    aget v20, v1, v2

    .line 128
    .line 129
    invoke-virtual/range {v12 .. v20}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 143
    .line 144
    iget-object v3, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 145
    .line 146
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v4, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
