.class public Lcom/lsec/core/ipc/IpcToolkit;
.super Ljava/lang/Object;
.source "IpcToolkit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitSet(Lcom/lsec/core/ipc/ModuleCallbackList;Lcom/syu/ipc/IModuleCallback;)Ljava/util/BitSet;
    .locals 5
    .param p0, "list"    # Lcom/lsec/core/ipc/ModuleCallbackList;
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;

    .prologue
    .line 12
    const/4 v1, 0x0

    .line 13
    .local v1, "bitset":Ljava/util/BitSet;
    invoke-interface {p1}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 14
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/lsec/core/ipc/ModuleCallbackList;->beginBroadcast()I

    move-result v2

    .line 15
    .local v2, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 21
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/ipc/ModuleCallbackList;->finishBroadcast()V

    .line 22
    return-object v1

    .line 16
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lsec/core/ipc/ModuleCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/syu/ipc/IModuleCallback;

    invoke-interface {v4}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {p0, v3}, Lcom/lsec/core/ipc/ModuleCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bitset":Ljava/util/BitSet;
    check-cast v1, Ljava/util/BitSet;

    .line 18
    .restart local v1    # "bitset":Ljava/util/BitSet;
    goto :goto_1

    .line 15
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static register(Lcom/lsec/core/ipc/ModuleCallbackList;Lcom/syu/ipc/IModuleCallback;I)V
    .locals 2
    .param p0, "list"    # Lcom/lsec/core/ipc/ModuleCallbackList;
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {p0, p1}, Lcom/lsec/core/ipc/IpcToolkit;->getBitSet(Lcom/lsec/core/ipc/ModuleCallbackList;Lcom/syu/ipc/IModuleCallback;)Ljava/util/BitSet;

    move-result-object v0

    .line 28
    .local v0, "bitset":Ljava/util/BitSet;
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/BitSet;

    .end local v0    # "bitset":Ljava/util/BitSet;
    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 30
    .restart local v0    # "bitset":Ljava/util/BitSet;
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/lsec/core/ipc/ModuleCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 26
    :goto_0
    monitor-exit p0

    .line 35
    return-void

    .line 33
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 26
    .end local v0    # "bitset":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregister(Lcom/lsec/core/ipc/ModuleCallbackList;Lcom/syu/ipc/IModuleCallback;I)V
    .locals 2
    .param p0, "list"    # Lcom/lsec/core/ipc/ModuleCallbackList;
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {p0, p1}, Lcom/lsec/core/ipc/IpcToolkit;->getBitSet(Lcom/lsec/core/ipc/ModuleCallbackList;Lcom/syu/ipc/IModuleCallback;)Ljava/util/BitSet;

    move-result-object v0

    .line 40
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->clear(I)V

    .line 42
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/lsec/core/ipc/ModuleCallbackList;->unregister(Lcom/syu/ipc/IModuleCallback;)Z

    .line 38
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 38
    .end local v0    # "bitset":Ljava/util/BitSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
