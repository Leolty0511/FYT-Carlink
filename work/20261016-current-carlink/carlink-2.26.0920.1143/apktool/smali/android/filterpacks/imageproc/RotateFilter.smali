.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mProgram:Landroid/filterfw/core/Program;

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
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 10
    .line 11
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 14
    .line 15
    return-void
.end method

.method private updateParameters()V
    .locals 11

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    .line 2
    .line 3
    rem-int/lit8 v1, v0, 0x5a

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    rem-int/lit16 v1, v0, 0xb4

    .line 8
    .line 9
    const/high16 v2, -0x40800000    # -1.0f

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    rem-int/lit16 v0, v0, 0x168

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    :cond_0
    move v10, v3

    .line 22
    move v3, v2

    .line 23
    move v2, v10

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x5a

    .line 26
    .line 27
    rem-int/lit16 v0, v0, 0x168

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v2, v4

    .line 33
    :goto_0
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 34
    .line 35
    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 36
    .line 37
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 38
    .line 39
    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 40
    .line 41
    :goto_1
    new-instance v0, Landroid/filterfw/geometry/Point;

    .line 42
    .line 43
    neg-float v1, v3

    .line 44
    add-float v5, v1, v2

    .line 45
    .line 46
    add-float/2addr v5, v4

    .line 47
    const/high16 v6, 0x3f000000    # 0.5f

    .line 48
    .line 49
    mul-float/2addr v5, v6

    .line 50
    neg-float v7, v2

    .line 51
    sub-float v8, v7, v3

    .line 52
    .line 53
    add-float/2addr v8, v4

    .line 54
    mul-float/2addr v8, v6

    .line 55
    invoke-direct {v0, v5, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Landroid/filterfw/geometry/Point;

    .line 59
    .line 60
    add-float v8, v3, v2

    .line 61
    .line 62
    add-float/2addr v8, v4

    .line 63
    mul-float/2addr v8, v6

    .line 64
    sub-float v9, v2, v3

    .line 65
    .line 66
    add-float/2addr v9, v4

    .line 67
    mul-float/2addr v9, v6

    .line 68
    invoke-direct {v5, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    new-instance v9, Landroid/filterfw/geometry/Point;

    .line 72
    .line 73
    sub-float/2addr v1, v2

    .line 74
    add-float/2addr v1, v4

    .line 75
    mul-float/2addr v1, v6

    .line 76
    add-float/2addr v7, v3

    .line 77
    add-float/2addr v7, v4

    .line 78
    mul-float/2addr v7, v6

    .line 79
    invoke-direct {v9, v1, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroid/filterfw/geometry/Point;

    .line 83
    .line 84
    sub-float/2addr v3, v2

    .line 85
    add-float/2addr v3, v4

    .line 86
    mul-float/2addr v3, v6

    .line 87
    invoke-direct {v1, v3, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroid/filterfw/geometry/Quad;

    .line 91
    .line 92
    invoke-direct {v2, v0, v5, v9, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 96
    .line 97
    check-cast v0, Landroid/filterfw/core/ShaderProgram;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    const-string v1, "degree has to be multiply of 90."

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 25
    .line 26
    const-string v1, "!"

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5

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
    iget-object v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 44
    .line 45
    if-eq v3, v4, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    .line 58
    .line 59
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    .line 60
    .line 61
    iput v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 62
    .line 63
    iput v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 64
    .line 65
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    .line 69
    .line 70
    iget v3, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 86
    .line 87
    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 94
    .line 95
    .line 96
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
