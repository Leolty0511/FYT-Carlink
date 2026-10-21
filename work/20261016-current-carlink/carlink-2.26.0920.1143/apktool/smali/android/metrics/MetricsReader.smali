.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$LogReader;,
        Landroid/metrics/MetricsReader$Event;
    }
.end annotation


# instance fields
.field private LOGTAGS:[I

.field private mCheckpointTag:I

.field private mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Landroid/metrics/MetricsReader$LogReader;

.field private mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const v2, 0x80004

    .line 23
    .line 24
    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    .line 28
    .line 29
    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public checkpoint()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    rem-long/2addr v0, v2

    .line 9
    long-to-int v0, v0

    .line 10
    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Landroid/metrics/LogMaker;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/metrics/LogMaker;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public read(J)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/metrics/MetricsReader$Event;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    instance-of v3, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    check-cast v2, [Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const/4 v3, 0x1

    .line 60
    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    aput-object v2, v3, v4

    .line 64
    .line 65
    move-object v2, v3

    .line 66
    :goto_2
    new-instance v3, Landroid/metrics/LogMaker;

    .line 67
    .line 68
    invoke-direct {v3, v2}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0, v1}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getCategory()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/16 v1, 0x398

    .line 96
    .line 97
    if-ne v0, v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getSubtype()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iget v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 104
    .line 105
    if-ne p2, v0, :cond_0

    .line 106
    .line 107
    iget-object p2, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 114
    .line 115
    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 15
    .line 16
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 17
    .line 18
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 19
    .line 20
    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 21
    .line 22
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 23
    .line 24
    return-void
.end method

.method public setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .locals 0

    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    return-void
.end method
