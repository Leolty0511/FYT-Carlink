.class public abstract Landroid/service/resolver/ResolverRankerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_RESOLVER_RANKER_SERVICE"

.field private static final DEBUG:Z = false

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "RESOLVER_RANKER_SERVICE"

.field public static final HOLD_PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.resolver.ResolverRankerService"

.field private static final TAG:Ljava/lang/String; = "ResolverRankerService"


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$100(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/resolver/ResolverRankerService;->sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Landroid/service/resolver/IResolverRankerResult;->sendResult(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "failed to send results: "

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, "ResolverRankerService"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-string v0, "android.service.resolver.ResolverRankerService"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Landroid/os/HandlerThread;

    .line 20
    .line 21
    const-string v1, "RESOLVER_RANKER_SERVICE"

    .line 22
    .line 23
    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    new-instance p1, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService$1;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 56
    .line 57
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPredictSharingProbabilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTrainRankingModel(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
