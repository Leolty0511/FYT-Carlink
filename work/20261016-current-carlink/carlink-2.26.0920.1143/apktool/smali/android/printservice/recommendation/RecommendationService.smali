.class public abstract Landroid/printservice/recommendation/RecommendationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/RecommendationService$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintServiceRecS"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.recommendation.RecommendationService"


# instance fields
.field private mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
    .locals 0

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    return-object p1
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/printservice/recommendation/RecommendationService$MyHandler;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroid/printservice/recommendation/RecommendationService$MyHandler;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/printservice/recommendation/RecommendationService$1;

    invoke-direct {p1, p0}, Landroid/printservice/recommendation/RecommendationService$1;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    return-object p1
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method

.method public final updateRecommendations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
