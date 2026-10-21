.class public abstract Landroid/content/AsyncTaskLoader;
.super Landroid/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader<",
        "TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 3
    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 4
    iput-object p2, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method public dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    const-string p1, "Cancelled task is now canceled!"

    .line 9
    .line 10
    const-string p2, "AsyncTaskLoader"

    .line 11
    .line 12
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Loader;->rollbackContentChanged()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 26
    .line 27
    const-string p1, "Delivering cancellation"

    .line 28
    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Loader;->deliverCancellation()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    const-string v1, "AsyncTaskLoader"

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const-string v0, "Load complete of old task, trying to cancel"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->isAbandoned()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->commitContentChanged()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 37
    .line 38
    const-string p1, "Delivering result"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 5
    .line 6
    const-string p4, " waiting="

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo p2, "mTask="

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 28
    .line 29
    iget-boolean p2, p2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo p2, "mCancellingTask="

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 56
    .line 57
    iget-boolean p2, p2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    cmp-long p2, v0, v2

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo p1, "mUpdateThrottle="

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-wide p1, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 80
    .line 81
    invoke-static {p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 82
    .line 83
    .line 84
    const-string p1, " mLastLoadCompleteTime="

    .line 85
    .line 86
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-wide p1, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 90
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    invoke-static {p1, p2, v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public executePendingTask()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 19
    .line 20
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    const-string v1, "AsyncTaskLoader"

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 42
    .line 43
    iget-wide v6, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 44
    .line 45
    add-long/2addr v4, v6

    .line 46
    cmp-long v0, v2, v4

    .line 47
    .line 48
    if-gez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Waiting until "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 58
    .line 59
    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 60
    .line 61
    add-long/2addr v2, v4

    .line 62
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " to execute: "

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 86
    .line 87
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 88
    .line 89
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 90
    .line 91
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 92
    .line 93
    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 94
    .line 95
    add-long/2addr v2, v4

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Executing: "

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 120
    .line 121
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCancelLoad()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onCancelLoad: mTask="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AsyncTaskLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "cancelLoad: still waiting for cancelled task; dropping next"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 46
    .line 47
    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 52
    .line 53
    iput-boolean v2, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 63
    .line 64
    return v2

    .line 65
    :cond_2
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 66
    .line 67
    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const-string v0, "cancelLoad: task is waiting, dropping it"

    .line 72
    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 77
    .line 78
    iput-boolean v2, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 79
    .line 80
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 88
    .line 89
    return v2

    .line 90
    :cond_3
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "cancelLoad: cancelled="

    .line 99
    .line 100
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 116
    .line 117
    iput-object v1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 120
    .line 121
    .line 122
    :cond_4
    iput-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 123
    .line 124
    return v0

    .line 125
    :cond_5
    return v2
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/content/AsyncTaskLoader$LoadTask;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/content/AsyncTaskLoader;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Preparing load: mTask="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AsyncTaskLoader"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long p1, p1, v0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
