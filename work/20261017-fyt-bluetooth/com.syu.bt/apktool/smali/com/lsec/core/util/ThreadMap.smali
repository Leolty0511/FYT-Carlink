.class public Lcom/lsec/core/util/ThreadMap;
.super Ljava/lang/Object;
.source "ThreadMap.java"


# static fields
.field public static mHashMapHandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static mHashMapThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lsec/core/util/ThreadMap;->mHashMapThread:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeThreadRunnable(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "strThread"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    sget-object v1, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 70
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public static startThread(Ljava/lang/String;Ljava/lang/Runnable;ZI)V
    .locals 5
    .param p0, "strThread"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "bRemoveOther"    # Z
    .param p3, "priority"    # I

    .prologue
    .line 13
    if-eqz p1, :cond_3

    .line 14
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapThread:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    .line 15
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    if-nez v1, :cond_1

    .line 16
    if-gez p3, :cond_4

    .line 17
    new-instance v1, Landroid/os/HandlerThread;

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-direct {v1, p0, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 21
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    :goto_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 22
    if-ltz p3, :cond_0

    .line 23
    invoke-virtual {v1, p3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 25
    :cond_0
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapThread:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 30
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_3

    .line 31
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_3
    return-void

    .line 19
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_4
    new-instance v1, Landroid/os/HandlerThread;

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    goto :goto_0
.end method

.method public static startThread(Ljava/lang/String;Ljava/lang/Runnable;ZIJ)V
    .locals 6
    .param p0, "strThread"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "bRemoveOther"    # Z
    .param p3, "priority"    # I
    .param p4, "delayMillis"    # J

    .prologue
    const/16 v3, -0x14

    .line 41
    if-eqz p1, :cond_3

    .line 42
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapThread:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    .line 43
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    if-nez v1, :cond_1

    .line 44
    if-ne p3, v3, :cond_4

    .line 45
    new-instance v1, Landroid/os/HandlerThread;

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-direct {v1, p0, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 49
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    :goto_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 50
    if-eq p3, v3, :cond_0

    .line 51
    invoke-virtual {v1, p3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 53
    :cond_0
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapThread:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    sget-object v2, Lcom/lsec/core/util/ThreadMap;->mHashMapHandler:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 58
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_3

    .line 59
    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    :cond_2
    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_3
    return-void

    .line 47
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_4
    new-instance v1, Landroid/os/HandlerThread;

    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    invoke-direct {v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    goto :goto_0
.end method
