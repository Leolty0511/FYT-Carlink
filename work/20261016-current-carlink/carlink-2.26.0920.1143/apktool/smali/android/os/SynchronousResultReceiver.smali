.class public Landroid/os/SynchronousResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SynchronousResultReceiver$Result;
    }
.end annotation


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/SynchronousResultReceiver$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    invoke-static {}, Landroid/net/lowpan/b;->r()V

    invoke-static {}, Landroid/net/lowpan/b;->l()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iput-object v1, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 3
    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 5
    invoke-static {}, Landroid/net/lowpan/b;->r()V

    invoke-static {}, Landroid/net/lowpan/b;->l()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 6
    iput-object p1, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    :goto_0
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v2

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 13
    .line 14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-static {v2, p1, p2, v3}, Landroid/net/lowpan/b;->e(Ljava/util/concurrent/CompletableFuture;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/os/SynchronousResultReceiver$Result;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object v2

    .line 23
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long v2, v0, v2

    .line 28
    .line 29
    sub-long/2addr p1, v2

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/AssertionError;

    .line 33
    .line 34
    const-string v0, "Error receiving response"

    .line 35
    .line 36
    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    new-instance v1, Landroid/os/SynchronousResultReceiver$Result;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Landroid/os/SynchronousResultReceiver$Result;-><init>(ILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/net/lowpan/b;->v(Ljava/util/concurrent/CompletableFuture;Landroid/os/SynchronousResultReceiver$Result;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
