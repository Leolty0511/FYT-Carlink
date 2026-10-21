.class public Lcom/lsec/core/ipc/ModuleCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "ModuleCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/syu/ipc/IModuleCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 4
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "value"    # I

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    monitor-enter p0

    .line 48
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, p1, v1, v2, v3}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 54
    :cond_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;III)V
    .locals 4
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    monitor-enter p0

    .line 60
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, p1, v1, v2, v3}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 66
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;IILjava/lang/String;)V
    .locals 5
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "intValue"    # I
    .param p3, "strValue"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    monitor-enter p0

    .line 108
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {p0, p1, v1, v2, v3}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 114
    :cond_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;ILjava/lang/String;)V
    .locals 5
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    monitor-enter p0

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {p0, p1, v1, v2, v3}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 102
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;I[I)V
    .locals 3
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    monitor-enter p0

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2, v1, v2}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 90
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static update(Lcom/syu/ipc/IModuleCallback;I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 78
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public bridge synthetic register(Landroid/os/IInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/syu/ipc/IModuleCallback;

    invoke-virtual {p0, p1}, Lcom/lsec/core/ipc/ModuleCallbackList;->register(Lcom/syu/ipc/IModuleCallback;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized register(Lcom/syu/ipc/IModuleCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic unregister(Landroid/os/IInterface;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/syu/ipc/IModuleCallback;

    invoke-virtual {p0, p1}, Lcom/lsec/core/ipc/ModuleCallbackList;->unregister(Lcom/syu/ipc/IModuleCallback;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized unregister(Lcom/syu/ipc/IModuleCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(II)V
    .locals 3
    .param p1, "updateCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/lsec/core/ipc/ModuleCallbackList;->update(I[I[F[Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public declared-synchronized update(I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lsec/core/ipc/ModuleCallbackList;->beginBroadcast()I

    move-result v1

    .line 24
    .local v1, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/lsec/core/ipc/ModuleCallbackList;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lsec/core/ipc/ModuleCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-virtual {v4, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    invoke-virtual {p0, v3}, Lcom/lsec/core/ipc/ModuleCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/syu/ipc/IModuleCallback;

    .line 27
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/syu/ipc/IModuleCallback;->update(I[I[F[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_1
    :try_start_3
    monitor-exit v0

    .line 24
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 27
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v1    # "cnt":I
    .end local v3    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method
