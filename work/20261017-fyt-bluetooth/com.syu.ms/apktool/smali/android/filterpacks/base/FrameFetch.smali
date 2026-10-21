.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
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
    iput-boolean p1, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "frame"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 3
    iget-boolean p1, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->closeOutputPort(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa

    .line 5
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->delayNextProcess(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :cond_0
    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
