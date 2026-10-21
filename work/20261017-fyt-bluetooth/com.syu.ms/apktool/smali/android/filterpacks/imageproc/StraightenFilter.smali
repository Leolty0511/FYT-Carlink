.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

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

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 3
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/16 p1, 0x280

    .line 4
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 7
    iput p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void
.end method

.method private updateParameters()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 3
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    move v2, v3

    .line 4
    :cond_0
    iput v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 5
    new-instance v2, Landroid/filterfw/geometry/Point;

    neg-float v3, v0

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v6

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    neg-float v7, v1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v4, v6

    invoke-direct {v2, v5, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 6
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v5

    mul-float/2addr v6, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v8

    mul-float/2addr v9, v1

    add-float/2addr v6, v9

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v8, v8

    mul-float/2addr v8, v0

    sub-float/2addr v5, v8

    invoke-direct {v4, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 7
    new-instance v5, Landroid/filterfw/geometry/Point;

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v8, v6

    mul-float/2addr v3, v8

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v8

    mul-float/2addr v9, v1

    sub-float/2addr v3, v9

    int-to-float v6, v6

    mul-float/2addr v7, v6

    int-to-float v6, v8

    mul-float/2addr v6, v0

    add-float/2addr v7, v6

    invoke-direct {v5, v3, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 8
    new-instance v3, Landroid/filterfw/geometry/Point;

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v6

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v8

    mul-float/2addr v9, v1

    sub-float/2addr v7, v9

    int-to-float v6, v6

    mul-float/2addr v1, v6

    int-to-float v6, v8

    mul-float/2addr v0, v6

    add-float/2addr v1, v0

    invoke-direct {v3, v7, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 9
    iget v0, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v4, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 10
    iget v1, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v6, v4, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 11
    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 12
    iget v6, v2, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    iget v7, v2, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 13
    iget v6, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    iget v7, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 14
    iget v6, v5, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    iget v7, v5, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v7, v0

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 15
    iget v6, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    iget v7, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v0, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    div-float/2addr v0, v7

    add-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 16
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 17
    iget-object v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v1, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    return-void

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max angle is out of range (0-180)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    .line 2
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 3
    iput-object p1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 4
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter Sharpen does not support frames of target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 3
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 5
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 6
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 7
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 8
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 10
    iget-object v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 12
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
