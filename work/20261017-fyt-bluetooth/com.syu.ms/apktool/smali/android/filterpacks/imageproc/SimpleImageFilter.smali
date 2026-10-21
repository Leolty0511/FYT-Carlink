.class public abstract Landroid/filterpacks/imageproc/SimpleImageFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field public mCurrentTarget:I

.field public mParameterName:Ljava/lang/String;

.field public mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    .line 3
    iput-object p2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    .line 5
    iget-object p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 6
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 7
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/filterpacks/imageproc/SimpleImageFilter;

    const-string v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 3
    iget-object v4, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/filterfw/core/Filter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error: mProgram field not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 6
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 5
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0, p2}, Landroid/filterfw/core/Filter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 7
    iput p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not create a program for image filter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
