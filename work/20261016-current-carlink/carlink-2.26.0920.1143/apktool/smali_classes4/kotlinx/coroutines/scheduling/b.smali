.class public final Lkotlinx/coroutines/scheduling/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final b:Lkotlinx/coroutines/scheduling/m;

.field public c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public d:J

.field public e:J

.field public f:I

.field public g:Z

.field public final synthetic h:Lkotlinx/coroutines/scheduling/c;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/b;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lkotlinx/coroutines/scheduling/m;

    .line 13
    .line 14
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 18
    .line 19
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 20
    .line 21
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    .line 25
    .line 26
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 27
    .line 28
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object p1, La0/d;->Default:Lkotlin/random/Random$Default;

    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->f:I

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 11
    .line 12
    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 13
    .line 14
    const-wide v4, 0x7ffffc0000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v4, v6

    .line 20
    const/16 v1, 0x2a

    .line 21
    .line 22
    shr-long/2addr v4, v1

    .line 23
    long-to-int v1, v4

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-wide v4, 0x40000000000L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    sub-long v8, v6, v4

    .line 34
    .line 35
    sget-object v4, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    move-object v5, v0

    .line 38
    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    move v0, v3

    .line 45
    :goto_0
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 48
    .line 49
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 50
    .line 51
    :goto_1
    move v0, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v0, v2

    .line 54
    :goto_2
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 60
    .line 61
    iget p1, p1, Lkotlinx/coroutines/scheduling/c;->b:I

    .line 62
    .line 63
    mul-int/lit8 p1, p1, 0x2

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move v3, v2

    .line 73
    :goto_3
    if-eqz v3, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_9

    .line 80
    .line 81
    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object v0, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 93
    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move-object p1, v0

    .line 102
    :goto_4
    if-nez p1, :cond_9

    .line 103
    .line 104
    if-nez v3, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_9

    .line 118
    .line 119
    :cond_8
    :goto_5
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/b;->i(Z)Lkotlinx/coroutines/scheduling/i;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :cond_9
    return-object p1

    .line 124
    :cond_a
    if-eqz p1, :cond_c

    .line 125
    .line 126
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v0, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 132
    .line 133
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 138
    .line 139
    if-nez v0, :cond_b

    .line 140
    .line 141
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_b
    if-nez v0, :cond_d

    .line 146
    .line 147
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 148
    .line 149
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 150
    .line 151
    invoke-virtual {p1}, Lk0/b;->d()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    move-object v0, p1

    .line 156
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_c
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 160
    .line 161
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 162
    .line 163
    invoke-virtual {p1}, Lk0/b;->d()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    move-object v0, p1

    .line 168
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 169
    .line 170
    :cond_d
    :goto_6
    if-nez v0, :cond_e

    .line 171
    .line 172
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/b;->i(Z)Lkotlinx/coroutines/scheduling/i;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_e
    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(I)I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/b;->f:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/b;->f:I

    .line 13
    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 15
    .line 16
    and-int v2, v1, p1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    and-int p1, v0, v1

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    const v1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    rem-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final e()Lkotlinx/coroutines/scheduling/i;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 11
    .line 12
    invoke-virtual {v0}, Lk0/b;->d()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 21
    .line 22
    invoke-virtual {v0}, Lk0/b;->d()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 27
    .line 28
    :cond_0
    return-object v0

    .line 29
    :cond_1
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/scheduling/f;

    .line 30
    .line 31
    invoke-virtual {v0}, Lk0/b;->d()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    .line 40
    .line 41
    invoke-virtual {v0}, Lk0/b;->d()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    .line 46
    .line 47
    :cond_2
    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/c;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    const-wide v3, 0x40000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 20
    .line 21
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 27
    .line 28
    :cond_2
    return v1
.end method

.method public final i(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 4
    .line 5
    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 6
    .line 7
    const-wide/32 v3, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v1, v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move v8, v7

    .line 25
    const-wide v9, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    if-ge v8, v1, :cond_7

    .line 33
    .line 34
    add-int/lit8 v8, v8, 0x1

    .line 35
    .line 36
    const/4 v13, 0x1

    .line 37
    add-int/2addr v2, v13

    .line 38
    if-le v2, v1, :cond_2

    .line 39
    .line 40
    move v2, v13

    .line 41
    :cond_2
    iget-object v13, v4, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 42
    .line 43
    invoke-virtual {v13, v2}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    check-cast v13, Lkotlinx/coroutines/scheduling/b;

    .line 48
    .line 49
    if-eqz v13, :cond_1

    .line 50
    .line 51
    if-eq v13, v0, :cond_1

    .line 52
    .line 53
    const-wide/16 v14, -0x1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object v5, v0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 58
    .line 59
    iget-object v6, v13, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/scheduling/m;->e(Lkotlinx/coroutines/scheduling/m;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v5, v0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 67
    .line 68
    iget-object v6, v13, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    if-eqz v13, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5, v13, v7}, Lkotlinx/coroutines/scheduling/m;->a(Lkotlinx/coroutines/scheduling/i;Z)Lkotlinx/coroutines/scheduling/i;

    .line 80
    .line 81
    .line 82
    move-wide v5, v14

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v5, v6, v7}, Lkotlinx/coroutines/scheduling/m;->f(Lkotlinx/coroutines/scheduling/m;Z)J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    :goto_1
    cmp-long v13, v5, v14

    .line 89
    .line 90
    if-nez v13, :cond_6

    .line 91
    .line 92
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/m;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-object v2, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 98
    .line 99
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lkotlinx/coroutines/scheduling/i;

    .line 104
    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_5
    return-object v2

    .line 112
    :cond_6
    cmp-long v11, v5, v11

    .line 113
    .line 114
    if-lez v11, :cond_1

    .line 115
    .line 116
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    goto :goto_0

    .line 121
    :cond_7
    const-wide v5, 0x7fffffffffffffffL

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmp-long v1, v9, v5

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move-wide v9, v11

    .line 132
    :goto_2
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/b;->e:J

    .line 133
    .line 134
    return-object v3
.end method

.method public final run()V
    .locals 15

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_1
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 4
    .line 5
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_15

    .line 10
    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 12
    .line 13
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 14
    .line 15
    if-eq v2, v3, :cond_15

    .line 16
    .line 17
    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/b;->g:Z

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/b;->a(Z)Lkotlinx/coroutines/scheduling/i;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    if-eqz v2, :cond_8

    .line 26
    .line 27
    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->e:J

    .line 28
    .line 29
    iget-object v0, v2, Lkotlinx/coroutines/scheduling/i;->c:Le/r;

    .line 30
    .line 31
    iget v0, v0, Le/r;->a:I

    .line 32
    .line 33
    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    .line 34
    .line 35
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 36
    .line 37
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 38
    .line 39
    if-ne v1, v4, :cond_2

    .line 40
    .line 41
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 42
    .line 43
    iput-object v1, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_6

    .line 57
    .line 58
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 66
    .line 67
    invoke-virtual {v1, v4, v5}, Lkotlinx/coroutines/scheduling/c;->e(J)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/c;->f()Z

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :try_start_0
    check-cast v2, Lkotlinx/coroutines/scheduling/j;

    .line 81
    .line 82
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/j;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_0
    move-exception v2

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v5, v4, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_3
    if-nez v0, :cond_7

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 102
    .line 103
    const-wide/32 v4, -0x200000

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 110
    .line 111
    if-eq v0, v3, :cond_0

    .line 112
    .line 113
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 114
    .line 115
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/b;->g:Z

    .line 119
    .line 120
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/b;->e:J

    .line 121
    .line 122
    cmp-long v2, v2, v4

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    if-eqz v2, :cond_a

    .line 126
    .line 127
    if-nez v1, :cond_9

    .line 128
    .line 129
    move v1, v3

    .line 130
    goto :goto_1

    .line 131
    :cond_9
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 134
    .line 135
    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 137
    .line 138
    .line 139
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/b;->e:J

    .line 140
    .line 141
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 142
    .line 143
    .line 144
    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->e:J

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_a
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    .line 149
    .line 150
    sget-object v6, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 151
    .line 152
    if-eq v2, v6, :cond_b

    .line 153
    .line 154
    move v2, v3

    .line 155
    goto :goto_4

    .line 156
    :cond_b
    move v2, v0

    .line 157
    :goto_4
    if-nez v2, :cond_c

    .line 158
    .line 159
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 160
    .line 161
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/scheduling/c;->c(Lkotlinx/coroutines/scheduling/b;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_c
    const/4 v2, -0x1

    .line 167
    iput v2, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    .line 168
    .line 169
    :cond_d
    :goto_5
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    .line 170
    .line 171
    sget-object v7, Lkotlinx/coroutines/scheduling/c;->l:Lp/b;

    .line 172
    .line 173
    if-eq v6, v7, :cond_e

    .line 174
    .line 175
    move v6, v3

    .line 176
    goto :goto_6

    .line 177
    :cond_e
    move v6, v0

    .line 178
    :goto_6
    if-eqz v6, :cond_1

    .line 179
    .line 180
    iget v6, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    .line 181
    .line 182
    if-ne v6, v2, :cond_1

    .line 183
    .line 184
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 185
    .line 186
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-nez v6, :cond_1

    .line 191
    .line 192
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 193
    .line 194
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 195
    .line 196
    if-ne v6, v7, :cond_f

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_f
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 201
    .line 202
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 206
    .line 207
    .line 208
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    .line 209
    .line 210
    cmp-long v6, v8, v4

    .line 211
    .line 212
    if-nez v6, :cond_10

    .line 213
    .line 214
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 215
    .line 216
    .line 217
    move-result-wide v8

    .line 218
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 219
    .line 220
    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/c;->d:J

    .line 221
    .line 222
    add-long/2addr v8, v10

    .line 223
    iput-wide v8, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    .line 224
    .line 225
    :cond_10
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 226
    .line 227
    iget-wide v8, v6, Lkotlinx/coroutines/scheduling/c;->d:J

    .line 228
    .line 229
    invoke-static {v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 233
    .line 234
    .line 235
    move-result-wide v8

    .line 236
    iget-wide v10, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    .line 237
    .line 238
    sub-long/2addr v8, v10

    .line 239
    cmp-long v6, v8, v4

    .line 240
    .line 241
    if-ltz v6, :cond_d

    .line 242
    .line 243
    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    .line 244
    .line 245
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/c;

    .line 246
    .line 247
    iget-object v8, v6, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 248
    .line 249
    monitor-enter v8

    .line 250
    :try_start_1
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    .line 251
    .line 252
    .line 253
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    if-eqz v9, :cond_11

    .line 255
    .line 256
    monitor-exit v8

    .line 257
    goto :goto_5

    .line 258
    :cond_11
    :try_start_2
    iget-wide v9, v6, Lkotlinx/coroutines/scheduling/c;->controlState:J

    .line 259
    .line 260
    const-wide/32 v11, 0x1fffff

    .line 261
    .line 262
    .line 263
    and-long/2addr v9, v11

    .line 264
    long-to-int v9, v9

    .line 265
    iget v10, v6, Lkotlinx/coroutines/scheduling/c;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    .line 267
    if-gt v9, v10, :cond_12

    .line 268
    .line 269
    monitor-exit v8

    .line 270
    goto :goto_5

    .line 271
    :cond_12
    :try_start_3
    sget-object v9, Lkotlinx/coroutines/scheduling/b;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 272
    .line 273
    invoke-virtual {v9, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 274
    .line 275
    .line 276
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    if-nez v9, :cond_13

    .line 278
    .line 279
    monitor-exit v8

    .line 280
    goto :goto_5

    .line 281
    :cond_13
    :try_start_4
    iget v9, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    .line 282
    .line 283
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, p0, v9, v0}, Lkotlinx/coroutines/scheduling/c;->d(Lkotlinx/coroutines/scheduling/b;II)V

    .line 287
    .line 288
    .line 289
    sget-object v10, Lkotlinx/coroutines/scheduling/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 290
    .line 291
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v13

    .line 295
    and-long v10, v13, v11

    .line 296
    .line 297
    long-to-int v10, v10

    .line 298
    if-eq v10, v9, :cond_14

    .line 299
    .line 300
    iget-object v11, v6, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 301
    .line 302
    invoke-virtual {v11, v10}, Lk0/g;->b(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    check-cast v11, Lkotlinx/coroutines/scheduling/b;

    .line 310
    .line 311
    iget-object v12, v6, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 312
    .line 313
    invoke-virtual {v12, v9, v11}, Lk0/g;->c(ILkotlinx/coroutines/scheduling/b;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v9}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v11, v10, v9}, Lkotlinx/coroutines/scheduling/c;->d(Lkotlinx/coroutines/scheduling/b;II)V

    .line 320
    .line 321
    .line 322
    :cond_14
    iget-object v6, v6, Lkotlinx/coroutines/scheduling/c;->h:Lk0/g;

    .line 323
    .line 324
    const/4 v9, 0x0

    .line 325
    invoke-virtual {v6, v10, v9}, Lk0/g;->c(ILkotlinx/coroutines/scheduling/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    .line 327
    .line 328
    monitor-exit v8

    .line 329
    iput-object v7, p0, Lkotlinx/coroutines/scheduling/b;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :catchall_1
    move-exception v0

    .line 334
    monitor-exit v8

    .line 335
    throw v0

    .line 336
    :cond_15
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 337
    .line 338
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 339
    .line 340
    .line 341
    return-void
.end method
