.class public Landroid/filterpacks/base/FrameStore;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    const-string v0, "frame"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/filterpacks/base/FrameStore;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/FilterContext;->storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    return-void
.end method

.method public setupPorts()V
    .locals 1

    const-string v0, "frame"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->addInputPort(Ljava/lang/String;)V

    return-void
.end method
