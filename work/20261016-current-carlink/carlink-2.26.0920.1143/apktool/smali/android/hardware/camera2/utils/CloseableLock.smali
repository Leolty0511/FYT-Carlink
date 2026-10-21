.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mExclusive:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mSharedLocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CloseableLock"

    .line 2
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 4
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 5
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 8
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CloseableLock"

    .line 11
    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 13
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 14
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 17
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 18
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloseableLock["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    if-gtz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "Cannot acquire exclusive lock while holding shared lock"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 45
    .line 46
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 51
    .line 52
    if-lez v2, :cond_4

    .line 53
    .line 54
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 57
    .line 58
    .line 59
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 66
    .line 67
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v0

    .line 80
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    .line 95
    .line 96
    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-gtz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "Cannot acquire shared lock while holding exclusive lock"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 63
    .line 64
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    .line 93
    .line 94
    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 37
    .line 38
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 39
    .line 40
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public releaseLock()V
    .locals 3

    .line 1
    const-string v0, "Too many shared locks "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_5

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    .line 23
    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 54
    .line 55
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    .line 72
    .line 73
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 82
    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v1, "Do not release after the lock has been closed"

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    const-string v1, "Cannot release lock that was not acquired by this thread"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method
