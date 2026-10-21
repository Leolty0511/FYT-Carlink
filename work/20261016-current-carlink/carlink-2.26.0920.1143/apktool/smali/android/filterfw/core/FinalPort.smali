.class public Landroid/filterfw/core/FinalPort;
.super Landroid/filterfw/core/FieldPort;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .locals 2

    .line 1
    const-string v0, "Attempting to modify "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->assertPortIsOpen()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FilterPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-super {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/filterfw/core/FieldPort;->transfer(Landroid/filterfw/core/FilterContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "!"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "final "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
