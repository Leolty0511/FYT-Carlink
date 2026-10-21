.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 4
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 5
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 6
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 7
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr p1, v2

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 3
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v2, v3, :cond_3

    .line 6
    :goto_0
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v2, :cond_1

    .line 7
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 8
    :cond_1
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v2, p1

    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float p1, p1

    .line 9
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 10
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int v5, v3, v4

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v5, v6

    .line 11
    div-int/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v3, v4

    .line 12
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 13
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 14
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v8, v8

    div-float v8, v4, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v9, v9

    div-float v9, v6, v9

    invoke-virtual {v7, v2, p1, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 15
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast p1, Landroid/filterfw/core/ShaderProgram;

    int-to-float v2, v5

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v7, v5

    div-float/2addr v2, v7

    int-to-float v3, v3

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v8, v7

    div-float/2addr v3, v8

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v7

    div-float/2addr v6, v5

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 16
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 17
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 18
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    if-ne p1, v1, :cond_2

    .line 19
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 20
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    :cond_2
    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Image size should not change."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
