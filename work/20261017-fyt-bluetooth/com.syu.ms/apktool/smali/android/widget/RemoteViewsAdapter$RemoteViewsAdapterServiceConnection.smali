.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/e;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/d$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$1002(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    return p1
.end method

.method public static synthetic access$902(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v1, Landroid/widget/RemoteViewsAdapter;->mUserId:I

    invoke-static {p1, v2}, Landroid/widget/RemoteViewsAdapter;->access$000(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/widget/d$a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, Landroid/os/UserHandle;

    iget v1, v1, Landroid/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, p3, p1, v2}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-string p1, "RemoteViewsAdapter"

    const-string p2, "bind: adapter was null"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "RemoteViewsAdapterServiceConnection"

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bind(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 10
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/widget/e$a;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/e;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/e;

    .line 2
    iget-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/widget/RemoteViewsAdapter;->access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    .line 2
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/e;

    .line 4
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$700(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 3
    iget v3, v2, Landroid/widget/RemoteViewsAdapter;->mUserId:I

    invoke-static {p1, v3}, Landroid/widget/RemoteViewsAdapter;->access$000(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Landroid/os/UserHandle;

    iget v2, v2, Landroid/widget/RemoteViewsAdapter;->mUserId:I

    invoke-direct {p1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-string p1, "RemoteViewsAdapter"

    const-string/jumbo p2, "unbind: adapter was null"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "RemoteViewsAdapterServiceConnection"

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbind(): "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 9
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
