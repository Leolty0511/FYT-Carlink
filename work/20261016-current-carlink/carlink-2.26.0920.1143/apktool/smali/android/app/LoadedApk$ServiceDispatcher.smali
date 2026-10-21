.class final Landroid/app/LoadedApk$ServiceDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;,
        Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;,
        Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;
    }
.end annotation


# instance fields
.field private final mActiveConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/os/Handler;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I

.field private mForgotten:Z

.field private final mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

.field private final mLocation:Landroid/app/ServiceConnectionLeaked;

.field private mUnbindLocation:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p1, Landroid/app/ServiceConnectionLeaked;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v7, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move v6, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public death(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v7, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 19
    .line 20
    if-ne v1, p2, :cond_1

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3}, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;-><init>(Landroid/app/LoadedApk$1;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 34
    .line 35
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;

    .line 36
    .line 37
    invoke-direct {v3, p0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;-><init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :try_start_1
    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :try_start_2
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_2
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :goto_0
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 66
    .line 67
    iget-object v3, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 68
    .line 69
    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    if-eqz p3, :cond_5

    .line 81
    .line 82
    iget-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 83
    .line 84
    invoke-interface {p3, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    if-eqz p2, :cond_6

    .line 88
    .line 89
    iget-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 90
    .line 91
    invoke-interface {p3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    throw p1
.end method

.method public doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 13
    .line 14
    if-eq v1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object p2, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 23
    .line 24
    iget-object v0, v0, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 28
    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public doForget()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;

    .line 19
    .line 20
    iget-object v3, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->binder:Landroid/os/IBinder;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/app/LoadedApk$ServiceDispatcher$ConnectionInfo;->deathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 23
    .line 24
    invoke-interface {v3, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActiveConnections:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mForgotten:Z

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mFlags:I

    return v0
.end method

.method public getIServiceConnection()Landroid/app/IServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mIServiceConnection:Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;

    return-object v0
.end method

.method public getLocation()Landroid/app/ServiceConnectionLeaked;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mLocation:Landroid/app/ServiceConnectionLeaked;

    return-object v0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getUnbindLocation()Ljava/lang/RuntimeException;
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public setUnbindLocation(Ljava/lang/RuntimeException;)V
    .locals 0

    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mUnbindLocation:Ljava/lang/RuntimeException;

    return-void
.end method

.method public validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, " now "

    .line 6
    .line 7
    const-string v3, "ServiceConnection "

    .line 8
    .line 9
    if-ne v0, p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " registered with differing handler (was "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mConnection:Landroid/content/ServiceConnection;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, " registered with differing Context (was "

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Landroid/app/LoadedApk$ServiceDispatcher;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
.end method
