.class public Landroid/filterpacks/base/FrameSource;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "format"
    .end annotation
.end field

.field private mFrame:Landroid/filterfw/core/Frame;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "frame"
    .end annotation
.end field

.field private mRepeatFrame:Z
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

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/filterpacks/base/FrameSource;->mFrame:Landroid/filterfw/core/Frame;

    const-string v0, "frame"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 3
    :cond_0
    iget-boolean p1, p0, Landroid/filterpacks/base/FrameSource;->mRepeatFrame:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/FrameSource;->mFormat:Landroid/filterfw/core/FrameFormat;

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
