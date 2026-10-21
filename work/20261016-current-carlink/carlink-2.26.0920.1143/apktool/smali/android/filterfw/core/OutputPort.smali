.class public Landroid/filterfw/core/OutputPort;
.super Landroid/filterfw/core/FilterPort;
.source "SourceFile"


# instance fields
.field protected mBasePort:Landroid/filterfw/core/InputPort;

.field protected mTargetPort:Landroid/filterfw/core/InputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->close()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public connectTo(Landroid/filterfw/core/InputPort;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/filterfw/core/InputPort;->setSourcePort(Landroid/filterfw/core/OutputPort;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " already connected to "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "!"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public filterMustClose()Z
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBasePort()Landroid/filterfw/core/InputPort;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    return-object v0
.end method

.method public getTargetFilter()Landroid/filterfw/core/Filter;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->getFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTargetPort()Landroid/filterfw/core/InputPort;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    return-object v0
.end method

.method public hasFrame()Z
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->hasFrame()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

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

    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->acceptsFrame()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->open()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public pullFrame()Landroid/filterfw/core/Frame;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot pull frame on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Attempting to push frame on unconnected port: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "!"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public setBasePort(Landroid/filterfw/core/InputPort;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/OutputPort;->mBasePort:Landroid/filterfw/core/InputPort;

    return-void
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->assertPortIsOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/filterfw/core/OutputPort;->mTargetPort:Landroid/filterfw/core/InputPort;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Attempting to set frame on unconnected port: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "!"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "output "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
