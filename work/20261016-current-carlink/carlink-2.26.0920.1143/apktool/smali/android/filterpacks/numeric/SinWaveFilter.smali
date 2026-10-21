.class public Landroid/filterpacks/numeric/SinWaveFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mStepSize:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "stepSize"
    .end annotation
.end field

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x3d4ccccd    # 0.05f

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 12
    .line 13
    float-to-double v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    add-float/2addr v0, v1

    .line 22
    const/high16 v1, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr v0, v1

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "value"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 39
    .line 40
    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    .line 41
    .line 42
    add-float/2addr v0, v1

    .line 43
    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Float;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    const-string/jumbo v1, "value"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
