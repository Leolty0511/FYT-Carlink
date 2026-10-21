.class public Landroid/filterpacks/imageproc/CropRectFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
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

.field private mXorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xorigin"
    .end annotation
.end field

.field private mYorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "yorigin"
    .end annotation
.end field


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
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 10
    .line 11
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 12
    .line 13
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 6
    .line 7
    iget p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 10
    .line 11
    .line 12
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
    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 14
    .line 15
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 21
    .line 22
    const-string v1, "!"

    .line 23
    .line 24
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
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
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    .line 13
    .line 14
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-static {v3, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 38
    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 53
    .line 54
    if-ne p1, v4, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 61
    .line 62
    if-eq p1, v4, :cond_3

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 84
    .line 85
    .line 86
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

.method public updateSourceRect(II)V
    .locals 4

    .line 1
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 2
    .line 3
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 4
    .line 5
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 6
    .line 7
    check-cast v0, Landroid/filterfw/core/ShaderProgram;

    .line 8
    .line 9
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mXorigin:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    int-to-float v2, p1

    .line 13
    div-float/2addr v1, v2

    .line 14
    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mYorigin:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    int-to-float v3, p2

    .line 18
    div-float/2addr v2, v3

    .line 19
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float p1, p1

    .line 23
    div-float/2addr v3, p1

    .line 24
    iget p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    .line 25
    .line 26
    int-to-float p1, p1

    .line 27
    int-to-float p2, p2

    .line 28
    div-float/2addr p1, p2

    .line 29
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
