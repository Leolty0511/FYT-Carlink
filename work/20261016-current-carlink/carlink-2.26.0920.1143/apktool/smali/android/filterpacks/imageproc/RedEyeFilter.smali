.class public Landroid/filterpacks/imageproc/RedEyeFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_RED_INTENSITY:F = 1.3f

.field private static final MIN_RADIUS:F = 10.0f

.field private static final RADIUS_RATIO:F = 0.06f


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCenters:[F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "centers"
    .end annotation
.end field

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRadius:F

.field private mRedEyeBitmap:Landroid/graphics/Bitmap;

.field private mRedEyeFrame:Landroid/filterfw/core/Frame;

.field private final mRedEyeShader:Ljava/lang/String;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x280

    .line 5
    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/Canvas;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 24
    .line 25
    iput p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 26
    .line 27
    iput p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    .line 28
    .line 29
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeShader:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method private createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V
    .locals 9

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 6
    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    const v4, 0x3d75c28f    # 0.06f

    .line 32
    .line 33
    .line 34
    mul-float/2addr v3, v4

    .line 35
    const/high16 v4, 0x41200000    # 10.0f

    .line 36
    .line 37
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    .line 45
    .line 46
    array-length v5, v4

    .line 47
    if-ge v3, v5, :cond_0

    .line 48
    .line 49
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    .line 50
    .line 51
    aget v6, v4, v3

    .line 52
    .line 53
    int-to-float v7, v0

    .line 54
    mul-float/2addr v6, v7

    .line 55
    add-int/lit8 v7, v3, 0x1

    .line 56
    .line 57
    aget v4, v4, v7

    .line 58
    .line 59
    int-to-float v7, v1

    .line 60
    mul-float/2addr v4, v7

    .line 61
    iget v7, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    .line 62
    .line 63
    iget-object v8, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v3, 0x3

    .line 72
    invoke-static {v0, v1, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private updateProgramParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    rem-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string v1, "The size of center array must be even."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RedEyeFilter;->updateProgramParams()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    const p1, 0x3fa66666    # 1.3f

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v1, "intensity"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput p2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v0, "Filter RedEye does not support frames of target "

    .line 38
    .line 39
    const-string v1, "!"

    .line 40
    .line 41
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "image"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    .line 29
    .line 30
    if-eq v4, v5, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 44
    .line 45
    if-ne v4, v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 52
    .line 53
    if-eq v4, v5, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    .line 66
    .line 67
    :cond_3
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/RedEyeFilter;->createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    new-array p1, p1, [Landroid/filterfw/core/Frame;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    aput-object v1, p1, v2

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    iget-object v2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 78
    .line 79
    aput-object v2, p1, v1

    .line 80
    .line 81
    iget-object v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 82
    .line 83
    invoke-virtual {v1, p1, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    .line 99
    .line 100
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "image"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
