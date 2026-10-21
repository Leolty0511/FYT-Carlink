.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    move-object v2, v0

    .line 5
    :cond_1
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v2, v0, :cond_1

    .line 7
    :goto_0
    iget v0, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 9
    iget-object v1, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 10
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 11
    aget-object v4, v0, v3

    .line 12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 13
    invoke-virtual {v5, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 14
    aget v6, v1, v3

    iput v6, v5, Landroid/os/Message;->what:I

    .line 15
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    move-object v1, v0

    .line 4
    :cond_1
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v1, v0, :cond_1

    .line 6
    :goto_0
    iget v0, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v0, p1, :cond_5

    .line 7
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 8
    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 9
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    .line 10
    aget-object v5, p1, v4

    if-ne v5, p2, :cond_4

    aget v5, v0, v4

    if-ne v5, p3, :cond_4

    add-int/lit8 p2, v2, -0x1

    .line 11
    new-array p3, p2, [Landroid/os/Handler;

    iput-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 12
    new-array p2, p2, [I

    iput-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    if-lez v4, :cond_3

    .line 13
    invoke-static {p1, v3, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_5

    add-int/lit8 p2, v4, 0x1

    .line 15
    iget-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {p1, p2, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, p2, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpRegistrations()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcaster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move-object v1, v0

    .line 4
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v1, v0, :cond_0

    .line 8
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    .line 4
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array p1, v2, [Landroid/os/Handler;

    .line 5
    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array v1, v2, [I

    .line 6
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput-object p2, p1, v3

    aput p3, v1, v3

    .line 7
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 8
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 9
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto :goto_3

    :cond_0
    move-object v4, v0

    .line 10
    :cond_1
    iget v5, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v4, v0, :cond_1

    .line 12
    :goto_0
    iget v0, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v0, p1, :cond_4

    .line 13
    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    .line 14
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array v1, v2, [Landroid/os/Handler;

    .line 15
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array v1, v2, [I

    .line 16
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 17
    iput-object v4, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 18
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 19
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v0, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 20
    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 21
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v4, v1, :cond_3

    iget v1, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v1, p1, :cond_3

    .line 22
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    :cond_3
    move-object v4, v0

    goto :goto_2

    .line 23
    :cond_4
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v0, p1

    .line 24
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_6

    .line 25
    aget-object v5, p1, v2

    if-ne v5, p2, :cond_5

    aget v5, v1, v2

    if-ne v5, p3, :cond_5

    .line 26
    monitor-exit p0

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v0, 0x1

    .line 27
    new-array v5, v2, [Landroid/os/Handler;

    iput-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 28
    invoke-static {p1, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-array p1, v2, [I

    iput-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 30
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    .line 31
    :goto_2
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, p1, v3

    .line 32
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, p1, v3

    .line 33
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
