.class public Landroid/os/UpdateLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOW_IS_CONVENIENT:Ljava/lang/String; = "nowisconvenient"

.field private static final TAG:Ljava/lang/String; = "UpdateLock"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UPDATE_LOCK_CHANGED:Ljava/lang/String; = "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

.field private static sService:Landroid/os/IUpdateLock;


# instance fields
.field mCount:I

.field mHeld:Z

.field mRefCounted:Z

.field final mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 11
    .line 12
    iput-object p1, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/os/Binder;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 20
    .line 21
    return-void
.end method

.method private acquireLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Landroid/os/UpdateLock;->mCount:I

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/os/UpdateLock;->mTag:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Landroid/os/IUpdateLock;->acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const-string v0, "UpdateLock"

    .line 26
    .line 27
    const-string v1, "Unable to contact service to acquire"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method private static checkService()V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "updatelock"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/os/IUpdateLock$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateLock;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private releaseLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_0
    sget-object v0, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string v0, "UpdateLock"

    .line 24
    .line 25
    const-string v1, "Unable to contact service to release"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 32
    .line 33
    :cond_2
    iget v0, p0, Landroid/os/UpdateLock;->mCount:I

    .line 34
    .line 35
    if-ltz v0, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v1, "UpdateLock under-locked"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->acquireLocked()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public finalize()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "UpdateLock"

    .line 9
    .line 10
    const-string v2, "UpdateLock finalized while still held"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    sget-object v1, Landroid/os/UpdateLock;->sService:Landroid/os/IUpdateLock;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Landroid/os/IUpdateLock;->releaseUpdateLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    :try_start_2
    const-string v1, "UpdateLock"

    .line 24
    .line 25
    const-string v2, "Unable to contact service to release"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw v1
.end method

.method public isHeld()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/os/UpdateLock;->mHeld:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UpdateLock;->checkService()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/UpdateLock;->mToken:Landroid/os/IBinder;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0}, Landroid/os/UpdateLock;->releaseLocked()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public setReferenceCounted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/os/UpdateLock;->mRefCounted:Z

    return-void
.end method
