.class public Landroid/filterpacks/imageproc/ToRGBAFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mInputBPP:I

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 21
    .line 22
    iget p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    const-string v0, "filterpack_imageproc"

    .line 26
    .line 27
    if-eq p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p2, 0x3

    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    .line 33
    .line 34
    const-string/jumbo p2, "rgb_to_rgba"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0, p2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Unsupported BytesPerPixel: "

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 53
    .line 54
    const-string v1, "!"

    .line 55
    .line 56
    invoke-static {p2, v0, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    .line 65
    .line 66
    const-string/jumbo p2, "gray_to_rgba"

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0, p2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "colorspace"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3

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
    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 32
    .line 33
    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "image"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
