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

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    :cond_1
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 12
    .line 13
    if-lt v3, v1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 17
    .line 18
    if-ne v2, v0, :cond_1

    .line 19
    .line 20
    :goto_0
    iget v0, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    iget-object v0, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 27
    .line 28
    array-length v2, v0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_1
    if-ge v3, v2, :cond_3

    .line 31
    .line 32
    aget-object v4, v0, v3

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 39
    .line 40
    .line 41
    aget v6, v1, v3

    .line 42
    .line 43
    iput v6, v5, Landroid/os/Message;->what:I

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    move-object v1, v0

    .line 9
    :cond_1
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 10
    .line 11
    if-lt v2, p1, :cond_2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 15
    .line 16
    if-ne v1, v0, :cond_1

    .line 17
    .line 18
    :goto_0
    iget v0, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 19
    .line 20
    if-ne v0, p1, :cond_5

    .line 21
    .line 22
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 25
    .line 26
    array-length v2, p1

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_1
    if-ge v4, v2, :cond_5

    .line 30
    .line 31
    aget-object v5, p1, v4

    .line 32
    .line 33
    if-ne v5, p2, :cond_4

    .line 34
    .line 35
    aget v5, v0, v4

    .line 36
    .line 37
    if-ne v5, p3, :cond_4

    .line 38
    .line 39
    add-int/lit8 p2, v2, -0x1

    .line 40
    .line 41
    new-array p3, p2, [Landroid/os/Handler;

    .line 42
    .line 43
    iput-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 44
    .line 45
    new-array p2, p2, [I

    .line 46
    .line 47
    iput-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 48
    .line 49
    if-lez v4, :cond_3

    .line 50
    .line 51
    invoke-static {p1, v3, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 55
    .line 56
    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 57
    .line 58
    .line 59
    :cond_3
    sub-int/2addr v2, v4

    .line 60
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    add-int/lit8 p2, v4, 0x1

    .line 65
    .line 66
    iget-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 67
    .line 68
    invoke-static {p1, p2, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 72
    .line 73
    invoke-static {v0, p2, p1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    :goto_2
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p1
.end method

.method public dumpRegistrations()V
    .locals 7

    .line 1
    const-string v0, "Broadcaster "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 5
    .line 6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " {"

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "    senderWhat="

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v4, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 56
    .line 57
    array-length v2, v2

    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_0
    if-ge v3, v2, :cond_1

    .line 60
    .line 61
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v6, "        ["

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 74
    .line 75
    aget v6, v6, v3

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, "] "

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 86
    .line 87
    aget-object v6, v6, v3

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 103
    .line 104
    if-ne v0, v1, :cond_0

    .line 105
    .line 106
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 107
    .line 108
    const-string/jumbo v1, "}"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw v0
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Broadcaster$Registration;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    .line 12
    .line 13
    .line 14
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 15
    .line 16
    new-array p1, v2, [Landroid/os/Handler;

    .line 17
    .line 18
    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 19
    .line 20
    new-array v1, v2, [I

    .line 21
    .line 22
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 23
    .line 24
    aput-object p2, p1, v3

    .line 25
    .line 26
    aput p3, v1, v3

    .line 27
    .line 28
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 29
    .line 30
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 31
    .line 32
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    move-object v4, v0

    .line 36
    :cond_1
    iget v5, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 37
    .line 38
    if-lt v5, p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 42
    .line 43
    if-ne v4, v0, :cond_1

    .line 44
    .line 45
    :goto_0
    iget v0, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 46
    .line 47
    if-eq v0, p1, :cond_4

    .line 48
    .line 49
    new-instance v0, Landroid/os/Broadcaster$Registration;

    .line 50
    .line 51
    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V

    .line 52
    .line 53
    .line 54
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 55
    .line 56
    new-array v1, v2, [Landroid/os/Handler;

    .line 57
    .line 58
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 59
    .line 60
    new-array v1, v2, [I

    .line 61
    .line 62
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 63
    .line 64
    iput-object v4, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 65
    .line 66
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 67
    .line 68
    iput-object v1, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 69
    .line 70
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 71
    .line 72
    iput-object v0, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 73
    .line 74
    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 75
    .line 76
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 77
    .line 78
    if-ne v4, v1, :cond_3

    .line 79
    .line 80
    iget v1, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 81
    .line 82
    if-le v1, p1, :cond_3

    .line 83
    .line 84
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 85
    .line 86
    :cond_3
    move-object v4, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 89
    .line 90
    array-length v0, p1

    .line 91
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 92
    .line 93
    move v2, v3

    .line 94
    :goto_1
    if-ge v2, v0, :cond_6

    .line 95
    .line 96
    aget-object v5, p1, v2

    .line 97
    .line 98
    if-ne v5, p2, :cond_5

    .line 99
    .line 100
    aget v5, v1, v2

    .line 101
    .line 102
    if-ne v5, p3, :cond_5

    .line 103
    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    add-int/lit8 v2, v0, 0x1

    .line 110
    .line 111
    new-array v5, v2, [Landroid/os/Handler;

    .line 112
    .line 113
    iput-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 114
    .line 115
    invoke-static {p1, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    new-array p1, v2, [I

    .line 119
    .line 120
    iput-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 121
    .line 122
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 123
    .line 124
    .line 125
    move v3, v0

    .line 126
    :goto_2
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 127
    .line 128
    aput-object p2, p1, v3

    .line 129
    .line 130
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 131
    .line 132
    aput p3, p1, v3

    .line 133
    .line 134
    :goto_3
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p1
.end method
