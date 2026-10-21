.class public Landroid/filterpacks/base/RetargetFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mTarget:I

.field private mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = false
        name = "target"
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
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p2, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v2, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setupPorts()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTargetString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 8
    .line 9
    const-string v0, "frame"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->addInputPort(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v0}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
