.class public Landroid/filterpacks/imageproc/ToRGBFilter;
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

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method


# virtual methods
.method public createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result p1

    iput p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    .line 2
    iget-object p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result p1

    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 4
    iget p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    const/4 p2, 0x1

    const-string v0, "filterpack_imageproc"

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 5
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    const-string/jumbo p2, "rgba_to_rgb"

    invoke-direct {p1, v0, p2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported BytesPerPixel: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/filterfw/core/NativeProgram;

    const-string p2, "gray_to_rgb"

    invoke-direct {p1, v0, p2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    :goto_0
    return-void
.end method

.method public getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p1

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "colorspace"

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    return-object p1
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 4
    iget-object v2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 6
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    const-string v1, "image"

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 4
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
