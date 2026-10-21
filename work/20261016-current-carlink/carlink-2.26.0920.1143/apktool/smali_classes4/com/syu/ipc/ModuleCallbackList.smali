.class public Lcom/syu/ipc/ModuleCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/syu/ipc/IModuleCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 2

    if-eqz p0, :cond_0

    .line 17
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    .line 18
    invoke-interface {p0, p1, v0, p2, p2}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;III)V
    .locals 2

    if-eqz p0, :cond_0

    .line 21
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x0

    .line 22
    invoke-interface {p0, p1, v0, p2, p2}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;IILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 37
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v2

    const/4 p3, 0x0

    .line 38
    invoke-interface {p0, p1, v1, p3, p2}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 39
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 33
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 34
    invoke-interface {p0, p1, p2, p2, v0}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;I[I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    .line 30
    :try_start_0
    invoke-interface {p0, p1, p2, v0, v0}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;II)V
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;III)V
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 9
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;ILjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 13
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;I[I)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 11
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;I[I[F[Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 15
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static update([Lcom/syu/ipc/ModuleCallbackList;[III)V
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 5
    aget v0, p1, p2

    if-eq v0, p3, :cond_0

    .line 6
    aput p3, p1, p2

    if-eqz p0, :cond_0

    .line 7
    array-length p1, p0

    if-ge p2, p1, :cond_0

    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p3, p1, v0

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p2, p1, p3, p3}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic register(Landroid/os/IInterface;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/syu/ipc/IModuleCallback;

    invoke-virtual {p0, p1}, Lcom/syu/ipc/ModuleCallbackList;->register(Lcom/syu/ipc/IModuleCallback;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized register(Lcom/syu/ipc/IModuleCallback;)Z
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic unregister(Landroid/os/IInterface;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/syu/ipc/IModuleCallback;

    invoke-virtual {p0, p1}, Lcom/syu/ipc/ModuleCallbackList;->unregister(Lcom/syu/ipc/IModuleCallback;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized unregister(Lcom/syu/ipc/IModuleCallback;)Z
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public update(II)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/os/RemoteCallbackList;->updateAll(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateOne(Landroid/os/IInterface;I[I[F[Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/syu/ipc/IModuleCallback;

    invoke-virtual/range {p0 .. p5}, Lcom/syu/ipc/ModuleCallbackList;->updateOne(Lcom/syu/ipc/IModuleCallback;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public updateOne(Lcom/syu/ipc/IModuleCallback;I[I[F[Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
