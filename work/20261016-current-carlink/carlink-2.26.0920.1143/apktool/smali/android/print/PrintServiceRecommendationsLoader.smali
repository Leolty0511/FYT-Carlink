.class public Landroid/print/PrintServiceRecommendationsLoader;
.super Landroid/content/Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader<",
        "Ljava/util/List<",
        "Landroid/printservice/recommendation/RecommendationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/print/PrintManager;

    .line 22
    .line 23
    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic access$000(Landroid/print/PrintServiceRecommendationsLoader;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    return-void
.end method

.method private queueNewResult()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public onForceLoad()V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    return-void
.end method

.method public onReset()V
    .locals 0

    invoke-virtual {p0}, Landroid/print/PrintServiceRecommendationsLoader;->onStopLoading()V

    return-void
.end method

.method public onStartLoading()V
    .locals 3

    .line 1
    new-instance v0, Landroid/print/PrintServiceRecommendationsLoader$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/print/PrintServiceRecommendationsLoader$1;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/print/PrintManager;->addPrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onStopLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/print/PrintManager;->removePrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
