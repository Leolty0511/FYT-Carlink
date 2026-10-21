.class public final Landroid/content/pm/permission/RuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;,
        Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    }
.end annotation


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "android.content.pm.permission.RuntimePermissionPresenter.key.result"

.field private static final TAG:Ljava/lang/String; = "RuntimePermPresenter"

.field private static sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;
    .locals 2

    .line 1
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Landroid/content/pm/permission/RuntimePermissionPresenter;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 18
    .line 19
    :cond_0
    sget-object p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
