.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSegmentRange:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 30
    .line 31
    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/IProgressListener;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/IProgressListener;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/os/IProgressListener;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
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
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 21
    .line 22
    invoke-interface {p1, v0, v2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 27
    .line 28
    invoke-interface {p1, v0, v2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 32
    .line 33
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-interface {p1, v0, v1, v2}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p1
.end method

.method public endSegment([I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget v1, v0, v1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget v0, v0, v2

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public finish()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 4
    .line 5
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method public getSegmentRange()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public setProgress(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .locals 4

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v0, v0, v1

    mul-int/2addr p1, v0

    div-int/2addr p1, p2

    .line 7
    invoke-static {p1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    if-eqz p3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string p2, "android.intent.extra.TITLE"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget p2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object p3, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be started to change progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    .line 4
    .line 5
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    .line 12
    .line 13
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

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

.method public startSegment(I)[I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    new-array v1, v1, [I

    .line 6
    .line 7
    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v1, v3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    mul-int/2addr p1, v3

    .line 16
    div-int/lit8 p1, p1, 0x64

    .line 17
    .line 18
    aput p1, v1, v2

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method
