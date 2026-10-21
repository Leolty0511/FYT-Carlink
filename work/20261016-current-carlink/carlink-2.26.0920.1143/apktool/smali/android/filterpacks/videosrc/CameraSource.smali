.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraSource"

.field private static final mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mSourceCoords:[F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraTransform:[F

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMappedCoords:[F

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

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
    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    .line 9
    .line 10
    return-void

    .line 11
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
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 6
    .line 7
    const/16 p1, 0x140

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 10
    .line 11
    const/16 p1, 0xf0

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 14
    .line 15
    const/16 p1, 0x1e

    .line 16
    .line 17
    iput p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    .line 21
    .line 22
    new-instance p1, Landroid/filterpacks/videosrc/CameraSource$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 28
    .line 29
    const/16 p1, 0x10

    .line 30
    .line 31
    new-array v0, p1, [F

    .line 32
    .line 33
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 34
    .line 35
    new-array p1, p1, [F

    .line 36
    .line 37
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 38
    .line 39
    const-string p1, "CameraSource"

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic access$000(Landroid/filterpacks/videosrc/CameraSource;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return p0
.end method

.method public static synthetic access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 3

    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [I

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, [I

    .line 28
    .line 29
    aget v4, v2, v0

    .line 30
    .line 31
    mul-int/lit16 v5, p1, 0x3e8

    .line 32
    .line 33
    if-ge v4, v5, :cond_0

    .line 34
    .line 35
    aget v6, v2, v3

    .line 36
    .line 37
    if-le v6, v5, :cond_0

    .line 38
    .line 39
    aget v5, v1, v0

    .line 40
    .line 41
    if-le v4, v5, :cond_0

    .line 42
    .line 43
    aget v3, v1, v3

    .line 44
    .line 45
    if-ge v6, v3, :cond_0

    .line 46
    .line 47
    move-object v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-boolean p2, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const-string p2, "Requested fps: "

    .line 54
    .line 55
    const-string v2, ".Closest frame rate range: ["

    .line 56
    .line 57
    invoke-static {p2, p1, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    aget p2, v1, v0

    .line 62
    .line 63
    int-to-double v4, p2

    .line 64
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    div-double/2addr v4, v6

    .line 70
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ","

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    aget p2, v1, v3

    .line 79
    .line 80
    int-to-double v2, p2

    .line 81
    div-double/2addr v2, v6

    .line 82
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p2, "]"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "CameraSource"

    .line 95
    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_2
    return-object v1
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 11
    .line 12
    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    .line 13
    .line 14
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 19
    .line 20
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 21
    .line 22
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const/4 v3, -0x1

    .line 27
    move v4, v3

    .line 28
    move v5, v4

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 40
    .line 41
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    .line 42
    .line 43
    if-gt v7, p1, :cond_1

    .line 44
    .line 45
    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    .line 46
    .line 47
    if-gt v8, p2, :cond_1

    .line 48
    .line 49
    if-lt v7, v4, :cond_1

    .line 50
    .line 51
    if-lt v8, v5, :cond_1

    .line 52
    .line 53
    move v4, v7

    .line 54
    move v5, v8

    .line 55
    :cond_1
    if-ge v7, v1, :cond_0

    .line 56
    .line 57
    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    .line 58
    .line 59
    if-ge v6, v2, :cond_0

    .line 60
    .line 61
    move v2, v6

    .line 62
    move v1, v7

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-ne v4, v3, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v1, v4

    .line 68
    move v2, v5

    .line 69
    :goto_1
    iget-boolean p3, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 70
    .line 71
    if-eqz p3, :cond_4

    .line 72
    .line 73
    const-string p3, "Requested resolution: ("

    .line 74
    .line 75
    const-string v3, ", "

    .line 76
    .line 77
    const-string v4, "). Closest match: ("

    .line 78
    .line 79
    invoke-static {p3, p1, v3, p2, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, ")."

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p2, "CameraSource"

    .line 102
    .line 103
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    const/4 p1, 0x2

    .line 107
    new-array p1, p1, [I

    .line 108
    .line 109
    aput v1, p1, v0

    .line 110
    .line 111
    const/4 p2, 0x1

    .line 112
    aput v2, p1, p2

    .line 113
    .line 114
    return-object p1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "CameraSource"

    .line 6
    .line 7
    const-string v0, "Closing"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 19
    .line 20
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    .line 27
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    const-string p2, "framerate"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 13
    .line 14
    iget-object p2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget v0, p1, v0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aget p1, p1, v1

    .line 27
    .line 28
    invoke-virtual {p2, v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 32
    .line 33
    iget-object p2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 13
    .line 14
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 40
    .line 41
    :cond_1
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 42
    .line 43
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 44
    .line 45
    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 46
    .line 47
    invoke-direct {p0, v0, v3, v4}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    aget v3, v0, v2

    .line 52
    .line 53
    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 54
    .line 55
    aget v0, v0, v1

    .line 56
    .line 57
    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 58
    .line 59
    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 60
    .line 61
    invoke-virtual {v4, v3, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 65
    .line 66
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 67
    .line 68
    invoke-direct {p0, v0, v3}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 73
    .line 74
    aget v2, v0, v2

    .line 75
    .line 76
    aget v0, v0, v1

    .line 77
    .line 78
    invoke-virtual {v3, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    monitor-exit p0

    .line 87
    throw v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "CameraSource"

    .line 6
    .line 7
    const-string v1, "Opening"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 13
    .line 14
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 38
    .line 39
    const/16 v1, 0x68

    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 48
    .line 49
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 61
    .line 62
    :try_start_0
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 68
    .line 69
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 76
    .line 77
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Could not bind camera surface texture: "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, "!"

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "CameraSource"

    .line 6
    .line 7
    const-string v1, "Preparing"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 13
    .line 14
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 20
    .line 21
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 4
    .line 5
    const-string v2, "CameraSource"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Processing new frame"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const-wide/16 v4, 0x64

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "Interrupted while waiting for new frame"

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iput-boolean v3, v0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 40
    .line 41
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v1, "Got new frame"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, "Using frame extractor in thread: "

    .line 62
    .line 63
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 81
    .line 82
    iget-object v4, v0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 85
    .line 86
    .line 87
    iget-object v5, v0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    iget-object v7, v0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    sget-object v9, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 97
    .line 98
    .line 99
    iget-object v11, v0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 100
    .line 101
    iget-object v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 102
    .line 103
    aget v12, v1, v3

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    aget v13, v1, v3

    .line 107
    .line 108
    const/4 v3, 0x4

    .line 109
    aget v14, v1, v3

    .line 110
    .line 111
    const/4 v3, 0x5

    .line 112
    aget v15, v1, v3

    .line 113
    .line 114
    const/16 v3, 0x8

    .line 115
    .line 116
    aget v16, v1, v3

    .line 117
    .line 118
    const/16 v3, 0x9

    .line 119
    .line 120
    aget v17, v1, v3

    .line 121
    .line 122
    const/16 v3, 0xc

    .line 123
    .line 124
    aget v18, v1, v3

    .line 125
    .line 126
    const/16 v3, 0xd

    .line 127
    .line 128
    aget v19, v1, v3

    .line 129
    .line 130
    invoke-virtual/range {v11 .. v19}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v3, v0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v3, v0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 144
    .line 145
    iget-object v4, v0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 146
    .line 147
    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    iget-boolean v5, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 157
    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v6, "Timestamp: "

    .line 163
    .line 164
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    long-to-double v6, v3

    .line 168
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    div-double/2addr v6, v8

    .line 174
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v6, " s"

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-virtual {v1, v3, v4}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v3, "video"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 199
    .line 200
    .line 201
    iget-boolean v1, v0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 202
    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    const-string v1, "Done processing new frame"

    .line 206
    .line 207
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_6
    return-void
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 3
    .line 4
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->isOpen()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 18
    .line 19
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
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
    iget-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

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
