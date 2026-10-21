.class Landroid/printservice/recommendation/RecommendationService$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/RecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CONNECT:I = 0x1

.field static final MSG_DISCONNECT:I = 0x2

.field static final MSG_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method public constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->access$100(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;->onRecommendationsUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    :goto_0
    const-string v0, "PrintServiceRecS"

    .line 31
    .line 32
    const-string v1, "Could not update recommended services"

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/printservice/recommendation/RecommendationService;->onDisconnected()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-static {p1, v0}, Landroid/printservice/recommendation/RecommendationService;->access$102(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 51
    .line 52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/printservice/recommendation/RecommendationService;->access$102(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/printservice/recommendation/RecommendationService;->onConnected()V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method
