.class final Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteService"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSIONS:I = 0x4

.field public static final MSG_UNBIND:I = 0x3

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWork:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    return-void
.end method

.method private scheduleNextMessageIfNeededLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/os/Message;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private scheduleUnbind()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const-wide/16 v1, 0x2710

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 33
    .line 34
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_1
    invoke-interface {v2, v0, v1}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    const-string v0, "RuntimePermPresenter"

    .line 44
    .line 45
    const-string v1, "Error getting app permissions"

    .line 46
    .line 47
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_2
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_3
    iget-boolean p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 68
    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    throw p1

    .line 77
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    .line 88
    .line 89
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter p1

    .line 99
    :try_start_4
    iget-object v3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 100
    .line 101
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 102
    if-nez v3, :cond_5

    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    :try_start_5
    new-instance p1, Landroid/os/RemoteCallback;

    .line 106
    .line 107
    new-instance v4, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    .line 108
    .line 109
    invoke-direct {v4, p0, v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, v4, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v3, v0, p1}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move-exception p1

    .line 120
    const-string v0, "RuntimePermPresenter"

    .line 121
    .line 122
    const-string v1, "Error getting app permissions"

    .line 123
    .line 124
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    .line 128
    .line 129
    .line 130
    :goto_1
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    :try_start_6
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 134
    .line 135
    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :catchall_2
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    throw p1

    .line 141
    :catchall_3
    move-exception v0

    .line 142
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 143
    throw v0
.end method

.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 6
    .line 7
    monitor-exit p1

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v2, "android.permissionpresenterservice.RuntimePermissionPresenterService"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method
