.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x40000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FuseAppLoop"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 35
    .line 36
    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 51
    .line 52
    new-instance p1, Landroid/net/b;

    .line 53
    .line 54
    const/16 p2, 0x8

    .line 55
    .line 56
    invoke-direct {p1, p0, p2}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p3, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic a(Lcom/android/internal/os/FuseAppLoop;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop;->lambda$new$0()V

    return-void
.end method

.method private static checkInode(J)I
    .locals 7

    .line 1
    const-wide/16 v2, 0x2

    .line 2
    .line 3
    const-wide/32 v4, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const-string v6, "checkInode"

    .line 7
    .line 8
    move-wide v0, p0

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 10
    .line 11
    .line 12
    long-to-int p0, p0

    .line 13
    return p0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Landroid/system/ErrnoException;

    .line 17
    .line 18
    const-string p2, "getCallbackEntryOrThrowLocked"

    .line 19
    .line 20
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    .line 21
    .line 22
    invoke-direct {p1, p2, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private static getError(Ljava/lang/Exception;)I
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/system/ErrnoException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/system/ErrnoException;

    .line 6
    .line 7
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    .line 8
    .line 9
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    neg-int p0, p0

    .line 14
    return p0

    .line 15
    :cond_0
    sget p0, Landroid/system/OsConstants;->EBADF:I

    .line 16
    .line 17
    neg-int p0, p0

    .line 18
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method private onCommand(IJJJI[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 26
    .line 27
    :goto_0
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 28
    .line 29
    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 30
    .line 31
    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 32
    .line 33
    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 34
    .line 35
    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 36
    .line 37
    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    iput-object p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 42
    .line 43
    iget-object p4, p4, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 p5, 0x0

    .line 46
    invoke-static {p4, p1, p5, p5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Landroid/system/ErrnoException;

    .line 58
    .line 59
    const-string p4, "onCommand"

    .line 60
    .line 61
    sget p5, Landroid/system/OsConstants;->EBADF:I

    .line 62
    .line 63
    invoke-direct {p1, p4, p5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 75
    .line 76
    .line 77
    :goto_1
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1
.end method

.method private onOpen(JJ)[B
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v4, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v3, p0

    .line 21
    move-wide v6, p1

    .line 22
    move-wide v8, p3

    .line 23
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    .line 24
    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    iput-boolean p3, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 28
    .line 29
    iget-object p3, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p3, v1, v2}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return-object p1

    .line 41
    :cond_0
    :try_start_2
    new-instance p3, Landroid/system/ErrnoException;

    .line 42
    .line 43
    const-string p4, "onOpen"

    .line 44
    .line 45
    sget v1, Landroid/system/OsConstants;->EMFILE:I

    .line 46
    .line 47
    invoke-direct {p3, p4, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    throw p3
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p3

    .line 54
    :try_start_3
    invoke-static {p3}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 59
    .line 60
    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    const/4 p1, 0x0

    .line 63
    return-object p1

    .line 64
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x32

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private replySimpleLocked(JI)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 2
    .line 3
    const-wide/16 v3, 0x0

    .line 4
    .line 5
    cmp-long v0, v1, v3

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-wide v3, p1

    .line 11
    move v5, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 20

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "Unknown FUSE command: "

    .line 6
    .line 7
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v11, v2

    .line 10
    check-cast v11, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 11
    .line 12
    iget-object v7, v11, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 13
    .line 14
    iget-wide v8, v11, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 15
    .line 16
    iget-wide v12, v11, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 17
    .line 18
    iget v2, v11, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 19
    .line 20
    iget-wide v3, v11, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 21
    .line 22
    iget-object v14, v11, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 23
    .line 24
    const/4 v15, 0x1

    .line 25
    :try_start_0
    iget v5, v0, Landroid/os/Message;->what:I

    .line 26
    .line 27
    const-wide/16 v16, 0x0

    .line 28
    .line 29
    if-eq v5, v15, :cond_a

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    if-eq v5, v6, :cond_8

    .line 33
    .line 34
    const/16 v6, 0x12

    .line 35
    .line 36
    if-eq v5, v6, :cond_6

    .line 37
    .line 38
    const/16 v6, 0x14

    .line 39
    .line 40
    if-eq v5, v6, :cond_4

    .line 41
    .line 42
    const/16 v6, 0xf

    .line 43
    .line 44
    if-eq v5, v6, :cond_2

    .line 45
    .line 46
    const/16 v6, 0x10

    .line 47
    .line 48
    if-ne v5, v6, :cond_1

    .line 49
    .line 50
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v4, v2, v14}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 60
    .line 61
    cmp-long v0, v2, v16

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    move-wide v4, v12

    .line 68
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v7

    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    throw v0

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v0, v0, Landroid/os/Message;->what:I

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v2

    .line 100
    :cond_2
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 101
    .line 102
    invoke-virtual {v0, v3, v4, v2, v14}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iget-object v8, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :try_start_3
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 110
    .line 111
    cmp-long v0, v2, v16

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    move-object/from16 v1, p0

    .line 116
    .line 117
    move-wide v4, v12

    .line 118
    move-object v7, v14

    .line 119
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v8

    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :catchall_1
    move-exception v0

    .line 129
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    throw v0

    .line 131
    :cond_4
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    .line 134
    .line 135
    .line 136
    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    :try_start_5
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 140
    .line 141
    cmp-long v0, v2, v16

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    move-object/from16 v1, p0

    .line 147
    .line 148
    move-wide v4, v12

    .line 149
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 153
    .line 154
    .line 155
    monitor-exit v7

    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :catchall_2
    move-exception v0

    .line 159
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    :try_start_6
    throw v0

    .line 161
    :cond_6
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    .line 164
    .line 165
    .line 166
    iget-object v8, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 167
    .line 168
    monitor-enter v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 169
    :try_start_7
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 170
    .line 171
    cmp-long v0, v2, v16

    .line 172
    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    move-wide v4, v12

    .line 179
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 180
    .line 181
    .line 182
    :cond_7
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    .line 185
    .line 186
    .line 187
    move-result-wide v1

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 192
    .line 193
    .line 194
    monitor-exit v8

    .line 195
    goto :goto_0

    .line 196
    :catchall_3
    move-exception v0

    .line 197
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 198
    :try_start_8
    throw v0

    .line 199
    :cond_8
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    .line 202
    .line 203
    .line 204
    move-result-wide v18

    .line 205
    iget-object v14, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 208
    :try_start_9
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 209
    .line 210
    cmp-long v0, v2, v16

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    move-object/from16 v1, p0

    .line 215
    .line 216
    move-wide v4, v12

    .line 217
    move-wide v6, v8

    .line 218
    move-wide/from16 v8, v18

    .line 219
    .line 220
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 224
    .line 225
    .line 226
    monitor-exit v14

    .line 227
    goto :goto_0

    .line 228
    :catchall_4
    move-exception v0

    .line 229
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 230
    :try_start_a
    throw v0

    .line 231
    :cond_a
    iget-object v0, v7, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    .line 234
    .line 235
    .line 236
    move-result-wide v18

    .line 237
    iget-object v14, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 238
    .line 239
    monitor-enter v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 240
    :try_start_b
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 241
    .line 242
    cmp-long v0, v2, v16

    .line 243
    .line 244
    if-eqz v0, :cond_b

    .line 245
    .line 246
    move-object/from16 v1, p0

    .line 247
    .line 248
    move-wide v4, v12

    .line 249
    move-wide v6, v8

    .line 250
    move-wide/from16 v8, v18

    .line 251
    .line 252
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    .line 253
    .line 254
    .line 255
    :cond_b
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 256
    .line 257
    .line 258
    monitor-exit v14

    .line 259
    goto :goto_0

    .line 260
    :catchall_5
    move-exception v0

    .line 261
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 262
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    iget-object v1, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter v1

    .line 267
    :try_start_d
    const-string v2, "FuseAppLoop"

    .line 268
    .line 269
    const-string v3, ""

    .line 270
    .line 271
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-direct {v10, v12, v13, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 279
    .line 280
    .line 281
    invoke-direct {v10, v11}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 282
    .line 283
    .line 284
    monitor-exit v1

    .line 285
    :goto_0
    return v15

    .line 286
    :catchall_6
    move-exception v0

    .line 287
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 288
    throw v0
.end method

.method public native native_delete(J)V
.end method

.method public native native_new(I)J
.end method

.method public native native_replyGetAttr(JJJJ)V
.end method

.method public native native_replyLookup(JJJJ)V
.end method

.method public native native_replyOpen(JJJ)V
.end method

.method public native native_replyRead(JJI[B)V
.end method

.method public native native_replySimple(JJI)V
.end method

.method public native native_replyWrite(JJI)V
.end method

.method public native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0x7ffffffd

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    move v1, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    const-string v2, "Too many opened files."

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    cmp-long v1, v1, v5

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    move v3, v4

    .line 56
    :cond_1
    const-string v1, "Handler must be different from the current thread"

    .line 57
    .line 58
    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    cmp-long v1, v1, v3

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    :cond_2
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 70
    .line 71
    add-int/lit8 v2, v1, 0x1

    .line 72
    .line 73
    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 74
    .line 75
    if-gez v2, :cond_3

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 79
    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 89
    .line 90
    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 91
    .line 92
    new-instance v4, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {v4, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return v1

    .line 109
    :cond_4
    new-instance p1, Lcom/android/internal/os/FuseUnavailableMountException;

    .line 110
    .line 111
    iget p2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 112
    .line 113
    invoke-direct {p1, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1
.end method

.method public unregisterCallback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
