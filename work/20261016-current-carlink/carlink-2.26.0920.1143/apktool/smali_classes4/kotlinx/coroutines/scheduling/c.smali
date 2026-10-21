.class public final Lkotlinx/coroutines/scheduling/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final l:Lp/b;


# instance fields
.field private volatile synthetic _isTerminated:I

.field public final b:I

.field public final c:I

.field volatile synthetic controlState:J

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Lkotlinx/coroutines/scheduling/f;

.field public final g:Lkotlinx/coroutines/scheduling/f;

.field public final h:Lk0/g;

.field private volatile synthetic parkedWorkersStack:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/b;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lp/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lkotlinx/coroutines/scheduling/c;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/c;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/scheduling/c;->c:I

    .line 7
    .line 8
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/c;->d:J

    .line 9
    .line 10
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p5, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, p5

    .line 19
    :goto_0
    if-eqz v1, :cond_7

    .line 20
    .line 21
    if-lt p2, p1, :cond_1

    .line 22
    .line 23
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, p5

    .line 26
    :goto_1
    const-string v2, "Max pool size "

    .line 27
    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    const v1, 0x1ffffe

    .line 31
    .line 32
    .line 33
    if-gt p2, v1, :cond_2

    .line 34
    .line 35
    move v1, v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v1, p5

    .line 38
    :goto_2
    if-eqz v1, :cond_5

    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    cmp-long p2, p3, v1

    .line 43
    .line 44
    if-lez p2, :cond_3

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v0, p5

    .line 48
    :goto_3
    if-eqz v0, :cond_4

    .line 49
    .line 50
    new-instance p2, Lkotlinx/coroutines/scheduling/f;

    .line 51
    .line 52
    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/f;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 56
    .line 57
    new-instance p2, Lkotlinx/coroutines/scheduling/f;

    .line 58
    .line 59
    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/f;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 63
    .line 64
    iput-wide v1, p0, Lkotlinx/coroutines/scheduling/c;->parkedWorkersStack:J

    .line 65
    .line 66
    new-instance p2, Lk0/g;

    .line 67
    .line 68
    add-int/lit8 p3, p1, 0x1

    .line 69
    .line 70
    invoke-direct {p2, p3}, Lk0/g;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 74
    .line 75
    int-to-long p1, p1

    .line 76
    const/16 p3, 0x2a

    .line 77
    .line 78
    shl-long/2addr p1, p3

    .line 79
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 80
    .line 81
    iput p5, p0, Lkotlinx/coroutines/scheduling/c;->_isTerminated:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p2, "Idle worker keep alive time "

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p2, " must be positive"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :cond_5
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 114
    .line 115
    invoke-static {v2, p2, p1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :cond_6
    const-string p3, " should be greater than or equals to core pool size "

    .line 130
    .line 131
    invoke-static {v2, p2, p3, p1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p2

    .line 145
    :cond_7
    const-string p2, "Core pool size "

    .line 146
    .line 147
    const-string p3, " should be at least 1"

    .line 148
    .line 149
    invoke-static {p2, p1, p3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p2
.end method


# virtual methods
.method public final a()I
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/scheduling/c;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 12
    .line 13
    const-wide/32 v3, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long v5, v1, v3

    .line 17
    .line 18
    long-to-int v5, v5

    .line 19
    const-wide v6, 0x3ffffe00000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v6

    .line 25
    const/16 v6, 0x15

    .line 26
    .line 27
    shr-long/2addr v1, v6

    .line 28
    long-to-int v1, v1

    .line 29
    sub-int v1, v5, v1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_1
    iget v6, p0, Lkotlinx/coroutines/scheduling/c;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-lt v1, v6, :cond_2

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :cond_2
    :try_start_2
    iget v6, p0, Lkotlinx/coroutines/scheduling/c;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    if-lt v5, v6, :cond_3

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_3
    :try_start_3
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 48
    .line 49
    and-long/2addr v5, v3

    .line 50
    long-to-int v5, v5

    .line 51
    const/4 v6, 0x1

    .line 52
    add-int/2addr v5, v6

    .line 53
    if-lez v5, :cond_4

    .line 54
    .line 55
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 56
    .line 57
    invoke-virtual {v7, v5}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    if-nez v7, :cond_4

    .line 62
    .line 63
    move v7, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    move v7, v2

    .line 66
    :goto_0
    if-eqz v7, :cond_7

    .line 67
    .line 68
    new-instance v7, Lkotlinx/coroutines/scheduling/b;

    .line 69
    .line 70
    invoke-direct {v7, p0, v5}, Lkotlinx/coroutines/scheduling/b;-><init>(Lkotlinx/coroutines/scheduling/c;I)V

    .line 71
    .line 72
    .line 73
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 74
    .line 75
    invoke-virtual {v8, v5, v7}, Lk0/g;->c(ILkotlinx/coroutines/scheduling/b;)V

    .line 76
    .line 77
    .line 78
    sget-object v8, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 79
    .line 80
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    and-long/2addr v3, v8

    .line 85
    long-to-int v3, v3

    .line 86
    if-ne v5, v3, :cond_5

    .line 87
    .line 88
    move v2, v6

    .line 89
    :cond_5
    if-eqz v2, :cond_6

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    add-int/2addr v1, v6

    .line 95
    monitor-exit v0

    .line 96
    return v1

    .line 97
    :cond_6
    :try_start_4
    const-string v1, "Failed requirement."

    .line 98
    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :cond_7
    const-string v1, "Failed requirement."

    .line 110
    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0

    .line 123
    throw v1
.end method

.method public final b(Ljava/lang/Runnable;Le/r;Z)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/k;->e:Lkotlinx/coroutines/scheduling/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/i;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lkotlinx/coroutines/scheduling/i;

    .line 15
    .line 16
    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/i;->b:J

    .line 17
    .line 18
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/i;->c:Le/r;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/j;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/j;-><init>(Ljava/lang/Runnable;JLe/r;)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    instance-of v0, p2, Lkotlinx/coroutines/scheduling/b;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p2, Lkotlinx/coroutines/scheduling/b;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p2, v1

    .line 40
    :goto_1
    if-nez p2, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 44
    .line 45
    invoke-static {v0, p0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    move-object v1, p2

    .line 52
    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 57
    .line 58
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 59
    .line 60
    if-ne v0, v2, :cond_5

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    iget-object v2, p1, Lkotlinx/coroutines/scheduling/i;->c:Le/r;

    .line 64
    .line 65
    iget v2, v2, Le/r;->a:I

    .line 66
    .line 67
    if-nez v2, :cond_6

    .line 68
    .line 69
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 70
    .line 71
    if-ne v0, v2, :cond_6

    .line 72
    .line 73
    :goto_3
    move-object v0, p1

    .line 74
    goto :goto_4

    .line 75
    :cond_6
    iput-boolean p2, v1, Lkotlinx/coroutines/scheduling/b;->g:Z

    .line 76
    .line 77
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 78
    .line 79
    invoke-virtual {v0, p1, p3}, Lkotlinx/coroutines/scheduling/m;->a(Lkotlinx/coroutines/scheduling/i;Z)Lkotlinx/coroutines/scheduling/i;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_4
    const/4 v2, 0x0

    .line 84
    if-eqz v0, :cond_a

    .line 85
    .line 86
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/i;->c:Le/r;

    .line 87
    .line 88
    iget v3, v3, Le/r;->a:I

    .line 89
    .line 90
    if-ne v3, p2, :cond_7

    .line 91
    .line 92
    move v3, p2

    .line 93
    goto :goto_5

    .line 94
    :cond_7
    move v3, v2

    .line 95
    :goto_5
    if-eqz v3, :cond_8

    .line 96
    .line 97
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Lk0/b;->a(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Lk0/b;->a(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    :goto_6
    if-eqz v0, :cond_9

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_9
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 114
    .line 115
    iget-object p2, p0, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    .line 116
    .line 117
    const-string p3, " was terminated"

    .line 118
    .line 119
    invoke-static {p3, p2}, Lt/b;->y(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_a
    :goto_7
    if-eqz p3, :cond_b

    .line 128
    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_b
    move p2, v2

    .line 133
    :goto_8
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/i;->c:Le/r;

    .line 134
    .line 135
    iget p1, p1, Le/r;->a:I

    .line 136
    .line 137
    if-nez p1, :cond_f

    .line 138
    .line 139
    if-eqz p2, :cond_c

    .line 140
    .line 141
    return-void

    .line 142
    :cond_c
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_d

    .line 147
    .line 148
    goto :goto_9

    .line 149
    :cond_d
    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 150
    .line 151
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/c;->e(J)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_e

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_e
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 159
    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_f
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 163
    .line 164
    const-wide/32 v0, 0x200000

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    if-eqz p2, :cond_10

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_10
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_11

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_11
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/c;->e(J)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_12

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_12
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 189
    .line 190
    .line 191
    :goto_9
    return-void
.end method

.method public final c(Lkotlinx/coroutines/scheduling/b;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/b;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/c;->parkedWorkersStack:J

    .line 11
    .line 12
    const-wide/32 v0, 0x1fffff

    .line 13
    .line 14
    .line 15
    and-long/2addr v0, v4

    .line 16
    long-to-int v0, v0

    .line 17
    const-wide/32 v1, 0x200000

    .line 18
    .line 19
    .line 20
    add-long/2addr v1, v4

    .line 21
    const-wide/32 v6, -0x200000

    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v6

    .line 25
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/b;->b()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 30
    .line 31
    invoke-virtual {v6, v0}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/b;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 39
    .line 40
    int-to-long v6, v3

    .line 41
    or-long/2addr v6, v1

    .line 42
    move-object v2, v0

    .line 43
    move-object v3, p0

    .line 44
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    return-void
.end method

.method public final close()V
    .locals 10

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_b

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v3, v0, Lkotlinx/coroutines/scheduling/b;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    check-cast v0, Lkotlinx/coroutines/scheduling/b;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v4

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 30
    .line 31
    invoke-static {v3, p0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    move-object v0, v4

    .line 39
    :goto_2
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    const-wide/32 v7, 0x1fffff

    .line 45
    .line 46
    .line 47
    and-long/2addr v5, v7

    .line 48
    long-to-int v5, v5

    .line 49
    monitor-exit v3

    .line 50
    if-gt v2, v5, :cond_9

    .line 51
    .line 52
    move v3, v2

    .line 53
    :goto_3
    add-int/lit8 v6, v3, 0x1

    .line 54
    .line 55
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 56
    .line 57
    invoke-virtual {v7, v3}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v7}, Lt/b;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast v7, Lkotlinx/coroutines/scheduling/b;

    .line 65
    .line 66
    if-eq v7, v0, :cond_7

    .line 67
    .line 68
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_4

    .line 73
    .line 74
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v8, 0x2710

    .line 78
    .line 79
    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    iget-object v7, v7, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 84
    .line 85
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v9, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 91
    .line 92
    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Lkotlinx/coroutines/scheduling/i;

    .line 97
    .line 98
    if-nez v9, :cond_5

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    invoke-virtual {v8, v9}, Lk0/b;->a(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :goto_5
    invoke-virtual {v7}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-nez v9, :cond_6

    .line 109
    .line 110
    move v9, v1

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {v8, v9}, Lk0/b;->a(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move v9, v2

    .line 116
    :goto_6
    if-eqz v9, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    if-ne v3, v5, :cond_8

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_8
    move v3, v6

    .line 123
    goto :goto_3

    .line 124
    :cond_9
    :goto_7
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 125
    .line 126
    invoke-virtual {v1}, Lk0/b;->b()V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 130
    .line 131
    invoke-virtual {v1}, Lk0/b;->b()V

    .line 132
    .line 133
    .line 134
    :goto_8
    if-nez v0, :cond_a

    .line 135
    .line 136
    move-object v1, v4

    .line 137
    goto :goto_9

    .line 138
    :cond_a
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/b;->a(Z)Lkotlinx/coroutines/scheduling/i;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_9
    if-nez v1, :cond_c

    .line 143
    .line 144
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 145
    .line 146
    invoke-virtual {v1}, Lk0/b;->d()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lkotlinx/coroutines/scheduling/i;

    .line 151
    .line 152
    if-nez v1, :cond_c

    .line 153
    .line 154
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 155
    .line 156
    invoke-virtual {v1}, Lk0/b;->d()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lkotlinx/coroutines/scheduling/i;

    .line 161
    .line 162
    if-nez v1, :cond_c

    .line 163
    .line 164
    if-nez v0, :cond_b

    .line 165
    .line 166
    goto :goto_a

    .line 167
    :cond_b
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 170
    .line 171
    .line 172
    :goto_a
    const-wide/16 v0, 0x0

    .line 173
    .line 174
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/c;->parkedWorkersStack:J

    .line 175
    .line 176
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 177
    .line 178
    :goto_b
    return-void

    .line 179
    :cond_c
    :try_start_1
    check-cast v1, Lkotlinx/coroutines/scheduling/j;

    .line 180
    .line 181
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/j;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_8

    .line 185
    :catchall_0
    move-exception v1

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-interface {v5, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_8

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    monitor-exit v3

    .line 200
    throw v0
.end method

.method public final d(Lkotlinx/coroutines/scheduling/b;II)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/c;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    const-wide/32 v4, 0x200000

    .line 9
    .line 10
    .line 11
    add-long/2addr v4, v2

    .line 12
    const-wide/32 v6, -0x200000

    .line 13
    .line 14
    .line 15
    and-long/2addr v4, v6

    .line 16
    if-ne v0, p2, :cond_5

    .line 17
    .line 18
    if-nez p3, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/b;->c()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_1
    sget-object v1, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    check-cast v0, Lkotlinx/coroutines/scheduling/b;

    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/b;->b()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/b;->c()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    move v0, p3

    .line 50
    :cond_5
    :goto_2
    if-gez v0, :cond_6

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_6
    sget-object v1, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 54
    .line 55
    int-to-long v6, v0

    .line 56
    or-long/2addr v4, v6

    .line 57
    move-object v0, v1

    .line 58
    move-object v1, p0

    .line 59
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    return-void
.end method

.method public final e(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 13
    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    move v0, p1

    .line 21
    :cond_0
    iget p2, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 22
    .line 23
    if-ge v0, p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    if-le p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/c;->a()I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/scheduling/k;->f:Le/r;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/scheduling/c;->b(Ljava/lang/Runnable;Le/r;Z)V

    return-void
.end method

.method public final f()Z
    .locals 12

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/c;->parkedWorkersStack:J

    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v6, v0

    .line 15
    check-cast v6, Lkotlinx/coroutines/scheduling/b;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, -0x1

    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    const-wide/32 v0, 0x200000

    .line 24
    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    const-wide/32 v4, -0x200000

    .line 28
    .line 29
    .line 30
    and-long/2addr v0, v4

    .line 31
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/b;->c()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_1
    sget-object v9, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 36
    .line 37
    if-ne v4, v9, :cond_2

    .line 38
    .line 39
    move v5, v8

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-nez v4, :cond_3

    .line 42
    .line 43
    move v5, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    check-cast v4, Lkotlinx/coroutines/scheduling/b;

    .line 46
    .line 47
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/b;->b()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_6

    .line 52
    .line 53
    :goto_2
    if-gez v5, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object v4, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 57
    .line 58
    int-to-long v10, v5

    .line 59
    or-long/2addr v10, v0

    .line 60
    move-object v0, v4

    .line 61
    move-object v1, p0

    .line 62
    move-wide v4, v10

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v6, v9}, Lkotlinx/coroutines/scheduling/b;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_3
    if-nez v6, :cond_5

    .line 73
    .line 74
    return v7

    .line 75
    :cond_5
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 76
    .line 77
    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_6
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/b;->c()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_1
.end method

.method public final isTerminated()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/scheduling/c;->_isTerminated:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 7
    .line 8
    invoke-virtual {v1}, Lk0/g;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    move v8, v3

    .line 19
    :goto_0
    if-ge v8, v1, :cond_7

    .line 20
    .line 21
    add-int/lit8 v9, v8, 0x1

    .line 22
    .line 23
    iget-object v10, p0, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 24
    .line 25
    invoke-virtual {v10, v8}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    check-cast v8, Lkotlinx/coroutines/scheduling/b;

    .line 30
    .line 31
    if-nez v8, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v10, v8, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 35
    .line 36
    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/m;->c()I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    iget-object v8, v8, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 41
    .line 42
    sget-object v11, Lkotlinx/coroutines/scheduling/a;->a:[I

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    aget v8, v11, v8

    .line 49
    .line 50
    if-eq v8, v3, :cond_5

    .line 51
    .line 52
    const/4 v11, 0x2

    .line 53
    if-eq v8, v11, :cond_4

    .line 54
    .line 55
    const/4 v11, 0x3

    .line 56
    if-eq v8, v11, :cond_3

    .line 57
    .line 58
    const/4 v11, 0x4

    .line 59
    if-eq v8, v11, :cond_2

    .line 60
    .line 61
    const/4 v10, 0x5

    .line 62
    if-eq v8, v10, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    if-lez v10, :cond_6

    .line 71
    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v10, 0x64

    .line 81
    .line 82
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v10, 0x63

    .line 104
    .line 105
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const/16 v10, 0x62

    .line 127
    .line 128
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    :cond_6
    :goto_1
    move v8, v9

    .line 142
    goto :goto_0

    .line 143
    :cond_7
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const/16 v3, 0x40

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, "[Pool Size {core = "

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget v3, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v3, ", max = "

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v3, p0, Lkotlinx/coroutines/scheduling/c;->c:I

    .line 187
    .line 188
    const-string v10, "}, Worker States {CPU = "

    .line 189
    .line 190
    const-string v11, ", blocking = "

    .line 191
    .line 192
    invoke-static {v1, v3, v10, v2, v11}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v2, ", parked = "

    .line 196
    .line 197
    const-string v3, ", dormant = "

    .line 198
    .line 199
    invoke-static {v1, v4, v2, v5, v3}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v2, ", terminated = "

    .line 203
    .line 204
    const-string v3, "}, running workers queues = "

    .line 205
    .line 206
    invoke-static {v1, v6, v2, v7, v3}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, ", global CPU queue size = "

    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 218
    .line 219
    invoke-virtual {v0}, Lk0/b;->c()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v0, ", global blocking queue size = "

    .line 227
    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 232
    .line 233
    invoke-virtual {v0}, Lk0/b;->c()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v0, ", Control State {created workers= "

    .line 241
    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-wide/32 v2, 0x1fffff

    .line 246
    .line 247
    .line 248
    and-long/2addr v2, v8

    .line 249
    long-to-int v0, v2

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v0, ", blocking tasks = "

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-wide v2, 0x3ffffe00000L

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    and-long/2addr v2, v8

    .line 264
    const/16 v0, 0x15

    .line 265
    .line 266
    shr-long/2addr v2, v0

    .line 267
    long-to-int v0, v2

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v0, ", CPUs acquired = "

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v0, p0, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 277
    .line 278
    const-wide v2, 0x7ffffc0000000000L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    and-long/2addr v2, v8

    .line 284
    const/16 v4, 0x2a

    .line 285
    .line 286
    shr-long/2addr v2, v4

    .line 287
    long-to-int v2, v2

    .line 288
    sub-int/2addr v0, v2

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v0, "}]"

    .line 293
    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    return-object v0
.end method
