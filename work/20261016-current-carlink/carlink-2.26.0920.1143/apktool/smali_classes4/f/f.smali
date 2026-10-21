.class public final Lf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/k;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Lf/j;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lf/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf/f;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lf/f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lf/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "Auto"

    .line 2
    .line 3
    const-string v1, "Failed to open wifi ap "

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "Auto"

    .line 4
    .line 5
    const-string v0, "----------------------->>>>  wifi ap opened "

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lf/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lf/k;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, Lf/k;->o:Z

    .line 16
    .line 17
    iget-object v0, p1, Lf/k;->x:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lf/f;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 28
    .line 29
    iget-object v1, p0, Lf/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lf/j;

    .line 32
    .line 33
    const-wide/16 v2, 0x3e8

    .line 34
    .line 35
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p1, Lf/k;->x:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 42
    .line 43
    return-void
.end method
