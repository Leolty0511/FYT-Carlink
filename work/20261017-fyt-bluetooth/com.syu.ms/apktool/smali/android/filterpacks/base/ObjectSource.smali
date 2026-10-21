.class public Landroid/filterpacks/base/ObjectSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mObject:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "object"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field public mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    const-string p2, "object"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    const-string v1, "ObjectSource producing frame with no object set!"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 6
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 8
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v0, "frame"

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 9
    iget-boolean p1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method
