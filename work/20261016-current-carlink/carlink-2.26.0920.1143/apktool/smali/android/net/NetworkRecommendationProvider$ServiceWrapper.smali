.class final Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
.super Landroid/net/INetworkRecommendationProvider$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRecommendationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceWrapper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/NetworkRecommendationProvider;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRecommendationProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->this$0:Landroid/net/NetworkRecommendationProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/INetworkRecommendationProvider$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    return-void
.end method

.method private enforceCallingPermission()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    .line 6
    .line 7
    const-string v2, "Permission denied."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method


# virtual methods
.method public requestScores([Landroid/net/NetworkKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->enforceCallingPermission()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;-><init>(Landroid/net/NetworkRecommendationProvider$ServiceWrapper;[Landroid/net/NetworkKey;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
