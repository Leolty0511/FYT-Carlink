.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public arg8:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 6
    .line 7
    return-void
.end method

.method private clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 28
    .line 29
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 9
    .line 10
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 11
    .line 12
    sput-object v3, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput-boolean v3, v2, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v2

    .line 26
    :cond_0
    new-instance v1, Lcom/android/internal/os/SomeArgs;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/android/internal/os/SomeArgs;-><init>()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Not waiting"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method public recycle()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 28
    .line 29
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 33
    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Already recycled."

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
