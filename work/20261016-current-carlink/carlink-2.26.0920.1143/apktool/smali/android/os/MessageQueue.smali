.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 12
    .line 13
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 18
    .line 19
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 16
    .line 17
    and-int/2addr p2, v1

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 23
    .line 24
    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 25
    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    .line 28
    .line 29
    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    or-int/lit8 p2, p2, 0x4

    .line 36
    .line 37
    :cond_2
    if-eq p2, v1, :cond_4

    .line 38
    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-ltz p1, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-ne v1, v0, :cond_3

    .line 55
    .line 56
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 57
    .line 58
    if-ne v1, v3, :cond_3

    .line 59
    .line 60
    iput p2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    monitor-exit p0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1

    .line 74
    :cond_4
    :goto_0
    return p2

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    throw p1
.end method

.method private dispose()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 6
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 7
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 8
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_0

    .line 9
    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v3, v5, p1

    if-gtz v3, :cond_0

    .line 10
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v4, v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 11
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 12
    iput-object v1, v4, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 13
    :cond_1
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 14
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 15
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    iget-wide v3, v2, Landroid/os/Message;->when:J

    .line 10
    .line 11
    cmp-long v3, v3, v0

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    .line 25
    .line 26
    cmp-long v4, v4, v0

    .line 27
    .line 28
    if-lez v4, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 32
    .line 33
    :goto_1
    iget-object v0, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/os/Message;->recycleUnchecked()V

    .line 36
    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v3, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move-object v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    :goto_2
    return-void
.end method

.method private removeAllMessagesLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 8
    .line 9
    .line 10
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 14
    .line 15
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 27
    .line 28
    if-ne v3, p2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/4 v1, -0x1

    .line 32
    :cond_1
    if-eqz p2, :cond_4

    .line 33
    .line 34
    or-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    new-instance v1, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 48
    .line 49
    :cond_2
    new-instance v1, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 50
    .line 51
    invoke-direct {v1, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 61
    .line 62
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 63
    .line 64
    iget p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 69
    .line 70
    :goto_0
    iget-wide v1, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 71
    .line 72
    invoke-static {v1, v2, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    if-eqz v2, :cond_5

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    iput p1, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 80
    .line 81
    iget-object p1, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "Can\'t add a null IdleHandler"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string/jumbo p2, "listener must not be null"

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "fd must not be null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-eqz v2, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 14
    .line 15
    if-ne p3, v4, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v5, "Message "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, ": "

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, "(Total messages: "

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ", polling="

    .line 74
    .line 75
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p2, ", quitting="

    .line 86
    .line 87
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-boolean p2, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 91
    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p2, ")"

    .line 96
    .line 97
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p1
.end method

.method public enqueueMessage(Landroid/os/Message;J)Z
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_8

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " sending message to a Handler on a dead thread"

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "MessageQueue"

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return v1

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 56
    .line 57
    .line 58
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 59
    .line 60
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    cmp-long v3, p2, v3

    .line 68
    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    iget-wide v3, v0, Landroid/os/Message;->when:J

    .line 72
    .line 73
    cmp-long v3, p2, v3

    .line 74
    .line 75
    if-gez v3, :cond_1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 83
    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    move v3, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move v3, v1

    .line 95
    :goto_0
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 96
    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    iget-wide v5, v4, Landroid/os/Message;->when:J

    .line 100
    .line 101
    cmp-long v5, p2, v5

    .line 102
    .line 103
    if-gez v5, :cond_3

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/os/Message;->isAsynchronous()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    move v3, v1

    .line 115
    :cond_4
    move-object v0, v4

    .line 116
    goto :goto_0

    .line 117
    :cond_5
    :goto_1
    iput-object v4, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 118
    .line 119
    iput-object p1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    :goto_2
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 123
    .line 124
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 125
    .line 126
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 127
    .line 128
    :goto_3
    if-eqz v3, :cond_7

    .line 129
    .line 130
    iget-wide p1, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 131
    .line 132
    invoke-static {p1, p2}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 133
    .line 134
    .line 135
    :cond_7
    monitor-exit p0

    .line 136
    return v2

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p1

    .line 140
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    new-instance p3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p1, " This message is already in use."

    .line 151
    .line 152
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p2

    .line 163
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string p2, "Message must have a target."

    .line 166
    .line 167
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public hasMessages(Landroid/os/Handler;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_2

    .line 17
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1

    .line 18
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 20
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 4
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_2
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 6
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v1, :cond_3

    .line 10
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 11
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_2
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isIdle()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-wide v2, v2, Landroid/os/Message;->when:J

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public isPolling()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public next()Landroid/os/Message;
    .locals 15

    .line 1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v3

    .line 11
    :cond_0
    const/4 v2, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    move v6, v2

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-eqz v5, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-direct {p0, v0, v1, v5}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    iget-object v5, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 29
    .line 30
    if-eqz v5, :cond_4

    .line 31
    .line 32
    iget-object v9, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v9, :cond_4

    .line 35
    .line 36
    :goto_1
    iget-object v9, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 37
    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    invoke-virtual {v9}, Landroid/os/Message;->isAsynchronous()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eqz v10, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v5, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_2
    move-object v14, v9

    .line 50
    move-object v9, v5

    .line 51
    move-object v5, v14

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    move-object v9, v3

    .line 54
    :goto_3
    if-eqz v5, :cond_7

    .line 55
    .line 56
    iget-wide v10, v5, Landroid/os/Message;->when:J

    .line 57
    .line 58
    cmp-long v12, v7, v10

    .line 59
    .line 60
    if-gez v12, :cond_5

    .line 61
    .line 62
    sub-long/2addr v10, v7

    .line 63
    const-wide/32 v12, 0x7fffffff

    .line 64
    .line 65
    .line 66
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    long-to-int v5, v9

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    iput-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 73
    .line 74
    if-eqz v9, :cond_6

    .line 75
    .line 76
    iget-object v0, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 77
    .line 78
    iput-object v0, v9, Landroid/os/Message;->next:Landroid/os/Message;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    iget-object v0, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 82
    .line 83
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 84
    .line 85
    :goto_4
    iput-object v3, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return-object v5

    .line 92
    :cond_7
    move v5, v2

    .line 93
    :goto_5
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 94
    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-object v3

    .line 102
    :cond_8
    if-gez v6, :cond_a

    .line 103
    .line 104
    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 105
    .line 106
    if-eqz v9, :cond_9

    .line 107
    .line 108
    iget-wide v9, v9, Landroid/os/Message;->when:J

    .line 109
    .line 110
    cmp-long v7, v7, v9

    .line 111
    .line 112
    if-gez v7, :cond_a

    .line 113
    .line 114
    :cond_9
    iget-object v6, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    :cond_a
    if-gtz v6, :cond_b

    .line 121
    .line 122
    const/4 v7, 0x1

    .line 123
    iput-boolean v7, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 124
    .line 125
    monitor-exit p0

    .line 126
    goto :goto_0

    .line 127
    :cond_b
    iget-object v5, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 128
    .line 129
    if-nez v5, :cond_c

    .line 130
    .line 131
    const/4 v5, 0x4

    .line 132
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    new-array v5, v5, [Landroid/os/MessageQueue$IdleHandler;

    .line 137
    .line 138
    iput-object v5, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 139
    .line 140
    :cond_c
    iget-object v5, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 143
    .line 144
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, [Landroid/os/MessageQueue$IdleHandler;

    .line 149
    .line 150
    iput-object v5, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 151
    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    move v5, v4

    .line 154
    :goto_6
    if-ge v5, v6, :cond_e

    .line 155
    .line 156
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 157
    .line 158
    aget-object v8, v7, v5

    .line 159
    .line 160
    aput-object v3, v7, v5

    .line 161
    .line 162
    :try_start_1
    invoke-interface {v8}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    .line 163
    .line 164
    .line 165
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    goto :goto_7

    .line 167
    :catchall_0
    move-exception v7

    .line 168
    const-string v9, "MessageQueue"

    .line 169
    .line 170
    const-string v10, "IdleHandler threw exception"

    .line 171
    .line 172
    invoke-static {v9, v10, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    move v7, v4

    .line 176
    :goto_7
    if-nez v7, :cond_d

    .line 177
    .line 178
    monitor-enter p0

    .line 179
    :try_start_2
    iget-object v7, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    monitor-exit p0

    .line 185
    goto :goto_8

    .line 186
    :catchall_1
    move-exception v0

    .line 187
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    throw v0

    .line 189
    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_e
    move v5, v4

    .line 193
    move v6, v5

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :catchall_2
    move-exception v0

    .line 197
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    throw v0
.end method

.method public postSyncBarrier()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method public quit(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "Main thread not allowed to quit."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 6
    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 10
    .line 11
    if-ne v1, p1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    if-ne v1, p2, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 20
    .line 21
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 35
    .line 36
    if-ne v2, p1, :cond_4

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    if-ne v2, p2, :cond_4

    .line 43
    .line 44
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move-object v0, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_5
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 4
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 5
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 7
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 8
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 9
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 10
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 11
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 16
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 17
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 18
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 19
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 20
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 21
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 22
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 23
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 24
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "fd must not be null"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public removeSyncBarrier(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    if-eq v2, p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 16
    .line 17
    move-object v3, v1

    .line 18
    move-object v1, v0

    .line 19
    move-object v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v0, :cond_6

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 27
    .line 28
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 32
    .line 33
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    :cond_3
    const/4 p1, 0x1

    .line 42
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    iget-boolean p1, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 48
    .line 49
    if-nez p1, :cond_5

    .line 50
    .line 51
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 52
    .line 53
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 54
    .line 55
    .line 56
    :cond_5
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-wide v1, 0x21100000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Message;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-wide v1, 0x10d00000002L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 34
    .line 35
    const-wide v1, 0x10d00000003L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 41
    .line 42
    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method
