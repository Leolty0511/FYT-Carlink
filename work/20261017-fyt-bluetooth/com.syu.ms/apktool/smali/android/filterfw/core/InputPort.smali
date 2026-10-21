.class public abstract Landroid/filterfw/core/InputPort;
.super Landroid/filterfw/core/FilterPort;
.source "SourceFile"


# instance fields
.field public mSourcePort:Landroid/filterfw/core/OutputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptsFrame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->hasFrame()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    return-void
.end method

.method public filterMustClose()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSourceFilter()Landroid/filterfw/core/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->getFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSourceFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSourcePort()Landroid/filterfw/core/OutputPort;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public open()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 2
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->open()V

    :cond_0
    return-void
.end method

.method public setSourcePort(Landroid/filterfw/core/OutputPort;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already connected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract transfer(Landroid/filterfw/core/FilterContext;)V
.end method
