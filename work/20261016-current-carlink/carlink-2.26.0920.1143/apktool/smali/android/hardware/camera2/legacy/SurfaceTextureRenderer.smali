.class public Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EGL_COLOR_BITLENGTH:I = 0x8

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final FLIP_TYPE_BOTH:I = 0x3

.field private static final FLIP_TYPE_HORIZONTAL:I = 0x1

.field private static final FLIP_TYPE_NONE:I = 0x0

.field private static final FLIP_TYPE_VERTICAL:I = 0x2

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final GLES_VERSION:I = 0x2

.field private static final GL_MATRIX_SIZE:I = 0x10

.field private static final LEGACY_PERF_PROPERTY:Ljava/lang/String; = "persist.camera.legacy_perf"

.field private static final PBUFFER_PIXEL_BYTES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureRenderer"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_POS_SIZE:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final VERTEX_UV_SIZE:I = 0x2

.field private static final sBothFlipTriangleVertices:[F

.field private static final sHorizontalFlipTriangleVertices:[F

.field private static final sRegularTriangleVertices:[F

.field private static final sVerticalFlipTriangleVertices:[F


# instance fields
.field private mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mConfigs:Landroid/opengl/EGLConfig;

.field private mConversionSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private final mFacing:I

.field private mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private mMVPMatrix:[F

.field private mPBufferPixels:Ljava/nio/ByteBuffer;

.field private mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

.field private mProgram:I

.field private mRegularTriangleVertices:Ljava/nio/FloatBuffer;

.field private mSTMatrix:[F

.field private volatile mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureID:I

.field private mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    .line 8
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    new-array v1, v0, [F

    .line 29
    .line 30
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 31
    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 41
    .line 42
    iput p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    .line 43
    .line 44
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sRegularTriangleVertices:[F

    .line 45
    .line 46
    array-length v1, p1

    .line 47
    mul-int/lit8 v1, v1, 0x4

    .line 48
    .line 49
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    .line 73
    .line 74
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sHorizontalFlipTriangleVertices:[F

    .line 75
    .line 76
    array-length v1, p1

    .line 77
    mul-int/lit8 v1, v1, 0x4

    .line 78
    .line 79
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    .line 103
    .line 104
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sVerticalFlipTriangleVertices:[F

    .line 105
    .line 106
    array-length v1, p1

    .line 107
    mul-int/lit8 v1, v1, 0x4

    .line 108
    .line 109
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    .line 133
    .line 134
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->sBothFlipTriangleVertices:[F

    .line 135
    .line 136
    array-length v1, p1

    .line 137
    mul-int/lit8 v1, v1, 0x4

    .line 138
    .line 139
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    .line 165
    .line 166
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method private addGlTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/PerfMeasurement;->addTimestamp(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private beginGlTiming()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->startTimer()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v2, ": EGL error: 0x"

    .line 13
    .line 14
    invoke-static {p1, v2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method private checkGlDrawError(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const/16 v3, 0x505

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    move v1, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-nez v0, :cond_3

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    new-instance p1, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, ": GLES20 error: 0x"

    .line 32
    .line 33
    invoke-static {p1, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v2, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v2, ": GLES20 error: 0x"

    .line 11
    .line 12
    invoke-static {p1, v2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method private clearState()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 23
    .line 24
    :try_start_0
    iget-object v1, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->disconnectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "Surface abandoned, skipping..."

    .line 34
    .line 35
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 57
    .line 58
    return-void
.end method

.method private configureEGLContext()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    .line 8
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    new-array v2, v2, [I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0xd

    .line 23
    .line 24
    new-array v5, v1, [I

    .line 25
    .line 26
    fill-array-data v5, :array_0

    .line 27
    .line 28
    .line 29
    new-array v1, v3, [Landroid/opengl/EGLConfig;

    .line 30
    .line 31
    new-array v10, v3, [I

    .line 32
    .line 33
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v9, 0x1

    .line 39
    move-object v7, v1

    .line 40
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 41
    .line 42
    .line 43
    const-string v2, "eglCreateContext RGB888+recordable ES2"

    .line 44
    .line 45
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    aget-object v1, v1, v0

    .line 49
    .line 50
    iput-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    new-array v2, v2, [I

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 59
    .line 60
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 61
    .line 62
    invoke-static {v3, v1, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 67
    .line 68
    const-string v0, "eglCreateContext"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 74
    .line 75
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 76
    .line 77
    if-eq v0, v1, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "No EGLContext could be made"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v1, "Cannot initialize EGL14"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v1, "No EGL14 display"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    nop

    .line 105
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3033
        0x5
        0x3038
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private configureEGLOutputSurfaces(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    const/16 v1, 0x3038

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput v1, v0, v2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 32
    .line 33
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 34
    .line 35
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 36
    .line 37
    iget-object v5, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 38
    .line 39
    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 44
    .line 45
    const-string v1, "eglCreateWindowSurface"

    .line 46
    .line 47
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "No Surfaces were provided to draw to"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private configureEGLPbufferSurfaces(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x4

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 27
    .line 28
    iget v4, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 29
    .line 30
    iget v5, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 31
    .line 32
    mul-int v6, v4, v5

    .line 33
    .line 34
    if-le v6, v1, :cond_0

    .line 35
    .line 36
    move v1, v6

    .line 37
    :cond_0
    const/4 v6, 0x5

    .line 38
    new-array v6, v6, [I

    .line 39
    .line 40
    const/16 v7, 0x3057

    .line 41
    .line 42
    aput v7, v6, v0

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aput v4, v6, v7

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    const/16 v7, 0x3056

    .line 49
    .line 50
    aput v7, v6, v4

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    aput v5, v6, v4

    .line 54
    .line 55
    const/16 v4, 0x3038

    .line 56
    .line 57
    aput v4, v6, v3

    .line 58
    .line 59
    iget-object v3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 60
    .line 61
    iget-object v4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 62
    .line 63
    invoke-static {v3, v4, v6, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iput-object v3, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 68
    .line 69
    const-string v2, "eglCreatePbufferSurface"

    .line 70
    .line 71
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    mul-int/2addr v1, v3

    .line 76
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v0, "No Surfaces were provided to draw to"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const v0, 0x8b31

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const v1, 0x8b30

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->loadShader(ILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string/jumbo v2, "glCreateProgram"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    sget-object v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "Could not create program"

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p1, "glAttachShader"

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    new-array p2, p1, [I

    .line 61
    .line 62
    const v2, 0x8b82

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 66
    .line 67
    .line 68
    aget p2, p2, v0

    .line 69
    .line 70
    if-ne p2, p1, :cond_3

    .line 71
    .line 72
    return v1

    .line 73
    :cond_3
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p2, "Could not link program: "

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string p2, "Could not link program"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method private drawFrame(Landroid/graphics/SurfaceTexture;III)V
    .locals 8

    .line 1
    const-string/jumbo v0, "onDrawFrame start"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getTextureSize(Landroid/graphics/SurfaceTexture;)Landroid/util/Size;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    const/4 v2, 0x0

    .line 33
    cmpg-float v3, v0, v2

    .line 34
    .line 35
    if-lez v3, :cond_3

    .line 36
    .line 37
    cmpg-float v3, p1, v2

    .line 38
    .line 39
    if-lez v3, :cond_3

    .line 40
    .line 41
    new-instance v3, Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-direct {v3, v2, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroid/graphics/RectF;

    .line 47
    .line 48
    int-to-float v0, p2

    .line 49
    int-to-float v4, p3

    .line 50
    invoke-direct {p1, v2, v2, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v3, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    div-float/2addr v0, v2

    .line 75
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    div-float/2addr v2, p1

    .line 84
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 85
    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-static {p1, v1, v0, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 92
    .line 93
    .line 94
    iget p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 95
    .line 96
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo p1, "glUseProgram"

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x84c0

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 109
    .line 110
    .line 111
    const p1, 0x8d65

    .line 112
    .line 113
    .line 114
    iget p2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    .line 115
    .line 116
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 117
    .line 118
    .line 119
    const/4 p1, 0x3

    .line 120
    const/4 p2, 0x1

    .line 121
    if-eq p4, p2, :cond_2

    .line 122
    .line 123
    const/4 p3, 0x2

    .line 124
    if-eq p4, p3, :cond_1

    .line 125
    .line 126
    if-eq p4, p1, :cond_0

    .line 127
    .line 128
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mRegularTriangleVertices:Ljava/nio/FloatBuffer;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mBothFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mVerticalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mHorizontalFlipTriangleVertices:Ljava/nio/FloatBuffer;

    .line 138
    .line 139
    :goto_0
    invoke-virtual {p3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    .line 141
    .line 142
    iget v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    .line 143
    .line 144
    const/4 v3, 0x3

    .line 145
    const/16 v4, 0x1406

    .line 146
    .line 147
    const/4 v5, 0x0

    .line 148
    const/16 v6, 0x14

    .line 149
    .line 150
    move-object v7, p3

    .line 151
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo p4, "glVertexAttribPointer maPosition"

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, p4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget p4, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    .line 161
    .line 162
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 163
    .line 164
    .line 165
    const-string/jumbo p4, "glEnableVertexAttribArray maPositionHandle"

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p4}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    .line 173
    .line 174
    iget v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    .line 175
    .line 176
    const/4 v3, 0x2

    .line 177
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo p1, "glVertexAttribPointer maTextureHandle"

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    .line 187
    .line 188
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 189
    .line 190
    .line 191
    const-string/jumbo p1, "glEnableVertexAttribArray maTextureHandle"

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    .line 198
    .line 199
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mMVPMatrix:[F

    .line 200
    .line 201
    invoke-static {p1, p2, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 202
    .line 203
    .line 204
    iget p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    .line 205
    .line 206
    iget-object p3, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSTMatrix:[F

    .line 207
    .line 208
    invoke-static {p1, p2, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 209
    .line 210
    .line 211
    const/4 p1, 0x5

    .line 212
    const/4 p2, 0x4

    .line 213
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 214
    .line 215
    .line 216
    const-string/jumbo p1, "glDrawArrays"

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlDrawError(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string p2, "Illegal intermediate texture with dimension of 0"

    .line 226
    .line 227
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :catch_0
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string p3, "Surface abandoned, skipping drawFrame..."

    .line 235
    .line 236
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    throw p2
.end method

.method private dumpGlTiming()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "CameraLegacy"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "Failed to create directory for data dump"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "durations_"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    new-instance v0, Landroid/text/format/Time;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, "_S"

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x1

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x2

    .line 89
    const-string v6, "_%d_%d"

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 98
    .line 99
    new-array v5, v5, [Ljava/lang/Object;

    .line 100
    .line 101
    iget v7, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 102
    .line 103
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    aput-object v7, v5, v4

    .line 108
    .line 109
    iget v2, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    aput-object v2, v5, v3

    .line 116
    .line 117
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "_C"

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 147
    .line 148
    new-array v7, v5, [Ljava/lang/Object;

    .line 149
    .line 150
    iget v8, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 151
    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    aput-object v8, v7, v4

    .line 157
    .line 158
    iget v2, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 159
    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    aput-object v2, v7, v3

    .line 165
    .line 166
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    const-string v0, ".txt"

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->dumpPerformanceData(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method private endGlTiming()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->stopTimer()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private getTextureId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    return v0
.end method

.method private initializeGLState()V
    .locals 3

    .line 1
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    .line 3
    .line 4
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const-string v1, "aPosition"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    .line 21
    .line 22
    const-string/jumbo v0, "glGetAttribLocation aPosition"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maPositionHandle:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    .line 33
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 34
    .line 35
    const-string v2, "aTextureCoord"

    .line 36
    .line 37
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    .line 42
    .line 43
    const-string/jumbo v0, "glGetAttribLocation aTextureCoord"

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->maTextureHandle:I

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 54
    .line 55
    const-string/jumbo v2, "uMVPMatrix"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    .line 63
    .line 64
    const-string/jumbo v0, "glGetUniformLocation uMVPMatrix"

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muMVPMatrixHandle:I

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mProgram:I

    .line 75
    .line 76
    const-string/jumbo v2, "uSTMatrix"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    .line 84
    .line 85
    const-string/jumbo v0, "glGetUniformLocation uSTMatrix"

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->muSTMatrixHandle:I

    .line 92
    .line 93
    if-eq v0, v1, :cond_0

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    new-array v1, v0, [I

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 100
    .line 101
    .line 102
    aget v0, v1, v2

    .line 103
    .line 104
    iput v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mTextureID:I

    .line 105
    .line 106
    const v1, 0x8d65

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v0, "glBindTexture mTextureID"

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v0, 0x2801

    .line 119
    .line 120
    const/high16 v2, 0x46180000    # 9728.0f

    .line 121
    .line 122
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 123
    .line 124
    .line 125
    const/16 v0, 0x2800

    .line 126
    .line 127
    const v2, 0x46180400    # 9729.0f

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 131
    .line 132
    .line 133
    const/16 v0, 0x2802

    .line 134
    .line 135
    const v2, 0x812f

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 139
    .line 140
    .line 141
    const/16 v0, 0x2803

    .line 142
    .line 143
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v0, "glTexParameter"

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string v1, "Could not get attrib location for uSTMatrix"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v1, "Could not get attrib location for uMVPMatrix"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    const-string v1, "Could not get attrib location for aTextureCoord"

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v1, "Could not get attrib location for aPosition"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    .line 187
    const-string v1, "failed creating program"

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "glCreateShader type="

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    new-array p2, p2, [I

    .line 23
    .line 24
    const v1, 0x8b81

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 29
    .line 30
    .line 31
    aget p2, p2, v2

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    sget-object p2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Could not compile shader "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ":"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, " "

    .line 63
    .line 64
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-static {v2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
.end method

.method private makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 4
    .line 5
    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "makeCurrent"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkEglError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private releaseEGLContext()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 8
    .line 9
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 10
    .line 11
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->dumpGlTiming()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 36
    .line 37
    iget-object v1, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 66
    .line 67
    iget-object v1, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 78
    .line 79
    iget-object v1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConfigs:Landroid/opengl/EGLConfig;

    .line 94
    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 96
    .line 97
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 98
    .line 99
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 100
    .line 101
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLContext:Landroid/opengl/EGLContext;

    .line 102
    .line 103
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->clearState()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private setupGlTiming()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->isGlTimingSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "Enabling GL performance measurement"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "GL performance measurement not supported on this device"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPerfMeasurer:Landroid/hardware/camera2/legacy/PerfMeasurement;

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x300d

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x3000

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "swapBuffers: EGL error: 0x"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method


# virtual methods
.method public cleanupEGLContext()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    return-void
.end method

.method public configureSurfaces(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->releaseEGLContext()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/util/Pair;

    .line 29
    .line 30
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroid/view/Surface;

    .line 33
    .line 34
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/util/Size;

    .line 37
    .line 38
    :try_start_0
    new-instance v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, p0, v3}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;-><init>(Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$1;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, v2, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 57
    .line 58
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->needsConversion(Landroid/view/Surface;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->connectSurface(Landroid/view/Surface;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    const-string v2, "Surface abandoned, skipping configuration... "

    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLContext()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-lez p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 100
    .line 101
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLOutputSurfaces(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->configureEGLPbufferSurfaces(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    const/4 v0, 0x0

    .line 124
    if-lez p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 133
    .line 134
    iget-object p1, p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    iget-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 144
    .line 145
    iget-object p1, p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 146
    .line 147
    :goto_1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->initializeGLState()V

    .line 151
    .line 152
    .line 153
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 154
    .line 155
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getTextureId()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 163
    .line 164
    const-string/jumbo p1, "persist.camera.legacy_perf"

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->setupGlTiming()V

    .line 174
    .line 175
    .line 176
    :cond_6
    return-void

    .line 177
    :cond_7
    :goto_2
    sget-object p1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 178
    .line 179
    const-string v0, "No output surfaces configured for GL drawing."

    .line 180
    .line 181
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public drawIntoSurfaces(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Surface abandoned, dropping frame. "

    .line 4
    .line 5
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_c

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->hasPendingPreviewCaptures()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v0, "before updateTexImage"

    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->beginGlTiming()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    move-object/from16 v6, p1

    .line 53
    .line 54
    invoke-virtual {v6, v4, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewCaptured(J)Landroid/util/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    if-nez v7, :cond_4

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void

    .line 66
    :cond_4
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 67
    .line 68
    move-object v8, v0

    .line 69
    check-cast v8, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 70
    .line 71
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-direct {v1, v4, v5}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->addGlTimestamp(J)V

    .line 78
    .line 79
    .line 80
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :try_start_0
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceIds(Ljava/util/Collection;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v4
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    move-object v5, v0

    .line 92
    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaces:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 117
    .line 118
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 119
    .line 120
    invoke-static {v9, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_6

    .line 125
    .line 126
    :try_start_1
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 127
    .line 128
    iget v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 129
    .line 130
    iget v11, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 131
    .line 132
    invoke-static {v9, v10, v11}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 133
    .line 134
    .line 135
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 136
    .line 137
    invoke-direct {v1, v9}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 138
    .line 139
    .line 140
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 141
    .line 142
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v10, Ljava/lang/Long;

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v10

    .line 150
    invoke-static {v9, v10, v11}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 151
    .line 152
    .line 153
    iget-object v9, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 154
    .line 155
    iget v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 156
    .line 157
    iget v11, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 158
    .line 159
    iget v12, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    .line 160
    .line 161
    if-nez v12, :cond_7

    .line 162
    .line 163
    const/4 v12, 0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    const/4 v12, 0x0

    .line 166
    :goto_2
    invoke-direct {v1, v9, v10, v11, v12}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->swapBuffers(Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 176
    sget-object v9, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v9, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    iget-object v0, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mConversionSurfaces:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_b

    .line 196
    .line 197
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;

    .line 202
    .line 203
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 204
    .line 205
    invoke-static {v9, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-eqz v9, :cond_9

    .line 210
    .line 211
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 212
    .line 213
    invoke-direct {v1, v9}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 214
    .line 215
    .line 216
    :try_start_2
    iget-object v9, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 217
    .line 218
    iget v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 219
    .line 220
    iget v11, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 221
    .line 222
    iget v12, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mFacing:I

    .line 223
    .line 224
    if-nez v12, :cond_a

    .line 225
    .line 226
    const/4 v12, 0x3

    .line 227
    goto :goto_4

    .line 228
    :cond_a
    const/4 v12, 0x2

    .line 229
    :goto_4
    invoke-direct {v1, v9, v10, v11, v12}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;III)V
    :try_end_2
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 230
    .line 231
    .line 232
    iget-object v9, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    .line 236
    .line 237
    const/4 v10, 0x0

    .line 238
    const/4 v11, 0x0

    .line 239
    iget v12, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 240
    .line 241
    iget v13, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 242
    .line 243
    const/16 v14, 0x1908

    .line 244
    .line 245
    const/16 v15, 0x1401

    .line 246
    .line 247
    iget-object v9, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 248
    .line 249
    move-object/from16 v16, v9

    .line 250
    .line 251
    invoke-static/range {v10 .. v16}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 252
    .line 253
    .line 254
    const-string/jumbo v9, "glReadPixels"

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v9}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->checkGlError(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :try_start_3
    iget-object v9, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 261
    .line 262
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    iget-object v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 267
    .line 268
    iget v11, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 269
    .line 270
    iget v12, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 271
    .line 272
    invoke-static {v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 273
    .line 274
    .line 275
    iget-object v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 276
    .line 277
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v11, Ljava/lang/Long;

    .line 280
    .line 281
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 282
    .line 283
    .line 284
    move-result-wide v11

    .line 285
    invoke-static {v10, v11, v12}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 286
    .line 287
    .line 288
    iget-object v10, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->surface:Landroid/view/Surface;

    .line 289
    .line 290
    iget-object v11, v1, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mPBufferPixels:Ljava/nio/ByteBuffer;

    .line 291
    .line 292
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    iget v12, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->width:I

    .line 297
    .line 298
    iget v0, v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer$EGLSurfaceHolder;->height:I

    .line 299
    .line 300
    invoke-static {v10, v11, v12, v0, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_3
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :catch_2
    move-exception v0

    .line 305
    sget-object v9, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v9, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Landroid/hardware/camera2/legacy/RequestHolder;->setOutputAbandoned()V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :catch_3
    move-exception v0

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 316
    .line 317
    const-string v3, "Surface abandoned, skipping drawFrame..."

    .line 318
    .line 319
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    throw v2

    .line 323
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;

    .line 324
    .line 325
    .line 326
    if-eqz v3, :cond_c

    .line 327
    .line 328
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->endGlTiming()V

    .line 329
    .line 330
    .line 331
    :cond_c
    :goto_5
    return-void
.end method

.method public flush()V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Flush not yet implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
