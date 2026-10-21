.class Landroid/printservice/recommendation/RecommendationService$1;
.super Landroid/printservice/recommendation/IRecommendationService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/printservice/recommendation/RecommendationService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method public constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .locals 0

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->access$000(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/printservice/recommendation/RecommendationService;->access$000(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
